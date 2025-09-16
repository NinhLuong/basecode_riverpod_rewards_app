import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:magic_rewards/config/errors/failure.dart';
import 'package:magic_rewards/shared/widgets/components/app_container.dart';
import 'package:magic_rewards/shared/widgets/components/empty_component.dart';
import 'package:magic_rewards/shared/widgets/components/failure_component.dart';
import 'package:magic_rewards/shared/widgets/components/loading_compoent.dart';
import 'package:magic_rewards/shared/extensions/theme_extensions/text_theme_extension.dart';
import 'package:magic_rewards/features/top_users/domain/entities/top_users_entity.dart';
import 'package:magic_rewards/features/top_users/presentation/providers/top_users_providers.dart';
import 'package:magic_rewards/features/top_users/presentation/widgets/my_rank_card.dart';
import 'package:magic_rewards/features/top_users/presentation/widgets/rank_bar.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class TopUsersTap extends ConsumerStatefulWidget {
  final bool halfMonth;

  TopUsersTap({super.key, this.halfMonth = false});

  @override
  ConsumerState<TopUsersTap> createState() => _TopUsersTapState();
}

class _TopUsersTapState extends ConsumerState<TopUsersTap> {
  final RefreshController _refreshController = RefreshController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(topUsersProvider.notifier).refresh(halfMonth: widget.halfMonth);
    });
  }

  @override
  Widget build(BuildContext context) {
    final topUsersAsync = ref.watch(topUsersProvider);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: topUsersAsync.when(
        loading: () => const LoadingComponent(),
        error: (error, stack) => FailureComponent(failure: error as Failure),
        data: (topUsersEntity) => SmartRefresher(
          controller: _refreshController,
          onRefresh: () async {
            await ref.read(topUsersProvider.notifier).refresh(halfMonth: widget.halfMonth);
            _refreshController.refreshCompleted();
          },
          child: ListView(
            children: topUsersEntity.topThree.isEmpty
                ? [const EmptyComponent()]
                : [
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: topUsersEntity.topThree
                          .map((e) => RankBar(
                              userRank: e,
                              maxPoints: topUsersEntity.maxPoints))
                          .toList()
                          .reversed
                          .toList(),
                    ),
                    if (topUsersEntity.myRank != null)
                      MyRankCard(userRank: topUsersEntity.myRank!),
                    ...topUsersEntity.rest
                        .map((e) =>
                            buildRankContainer(context, userRank: e)),
                    const SizedBox(height: 70),
                  ],
          ),
        ),
      ),
    );
  }

  Widget buildRankContainer(BuildContext context,
      {required UserRankEntity userRank}) {
    return AppContainer(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
        child: Row(
          children: [
            Text(userRank.rank.toString(), style: context.f18600),
            const SizedBox(width: 10),
            Text(userRank.wallet, style: context.f14400),
            const Spacer(),
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(5)),
                child: Text(userRank.amount, style: context.f14600)),
          ],
        ));
  }

}
