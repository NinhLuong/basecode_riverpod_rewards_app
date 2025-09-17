import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:magic_rewards/config/styles/app_colors.dart';
import 'package:magic_rewards/config/styles/app_gradient.dart';
import 'package:magic_rewards/shared/widgets/components/app_avatar.dart';
import 'package:magic_rewards/shared/widgets/components/custom_appbar.dart';
import 'package:magic_rewards/shared/widgets/components/empty_component.dart';
import 'package:magic_rewards/shared/widgets/components/loading_compoent.dart';
import 'package:magic_rewards/shared/extensions/theme_extensions/text_theme_extension.dart';
import 'package:magic_rewards/config/paths/images_paths.dart';
import 'package:magic_rewards/generated/l10n.dart';
import 'package:magic_rewards/features/home/presentation/providers/home_providers.dart';
import 'package:magic_rewards/features/home/presentation/state/home_state.dart';
import 'package:magic_rewards/features/home/presentation/widgets/offer_wall_card.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class HomeScreen extends ConsumerWidget {
  HomeScreen({super.key});

  final RefreshController refreshController = RefreshController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeState = ref.watch(homeProvider);
    
    return homeState.when(
      initial: () => const Scaffold(
        body: LoadingComponent(),
      ),
      loading: () => const Scaffold(
        body: LoadingComponent(),
      ),
      error: (errorMessage) => Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Error: $errorMessage'),
              ElevatedButton(
                onPressed: () => ref.read(homeProvider.notifier).refresh(),
                child: const Text('Retry'),
              ),
            ],
          ),
        ),
      ),
      success: (homeWithUser) => _buildHomeContent(context, ref, homeWithUser),
      refreshing: (currentData) => _buildHomeContent(context, ref, currentData, isRefreshing: true),
    );
  }

  Widget _buildHomeContent(BuildContext context, WidgetRef ref, homeWithUser, {bool isRefreshing = false}) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Row(
          children: [
            const AppAvatar(),
            const SizedBox(width: 10),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(S.of(context).welome, style: context.f12700),
                Text(
                  "@${homeWithUser.username}",
                  style: context.f10500,
                ),
              ],
            ),
          ],
        ),
        actions: [
          SizedBox(
            height: 50.w,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 30.w, vertical: 5.w),
                      decoration: BoxDecoration(
                          color: AppColors.blue,
                          borderRadius: BorderRadius.circular(25)),
                      child: Text(
                        homeWithUser.balance,
                        style: context.f12600,
                      ),
                    ),
                    SizedBox(width: 10.w),
                  ],
                ),
                PositionedDirectional(
                    end: 0,
                    // top: 0,
                    child: Image.asset(ImagesPaths.coinPng, width: 32.w)),
              ],
            ),
          ),
          SizedBox(width: 20.w)
        ],
      ),
      body: SmartRefresher(
          controller: refreshController,
          onRefresh: () async {
            await ref.read(homeProvider.notifier).refresh();
            refreshController.refreshCompleted();
          },
          child: ListView(
            children: homeWithUser.offerWalls.isEmpty
                ? [const EmptyComponent()]
                : [
                        const SizedBox(height: 10),

                        ///todo implement popular
                        // buildTitle(context,
                        //     title: S.of(context).popular,
                        //     icon: const Icon(Icons.favorite,
                        //         color: Colors.white)),
                        // const SizedBox(height: 10),
                        // SizedBox(
                        //   height: 200,
                        //   child: ListView(
                        //     scrollDirection: Axis.horizontal,
                        //     children: List.generate(
                        //         5, (index) => buildPopularWidget(context)),
                        //   ),
                        // ),
                        // const SizedBox(height: 10),
                        // buildTitle(context,
                        //     title: S.of(context).tasks,
                        //     icon: SvgPicture.asset(ImagesPaths.tasksSvg, width: 25.w,)),
                        // const SizedBox(height: 10),
                        // const TasksCard(),
                        const SizedBox(height: 10),
                        buildTitle(context,
                            title: S.of(context).providers,
                            icon: Icon(Icons.favorite,
                                size: 25.w, color: Colors.white)),
                        const SizedBox(height: 10),
                        GridView.count(
                          shrinkWrap: true,
                          primary: false,
                          crossAxisCount: 2,
                          childAspectRatio: 9 / 10,
                          physics: const NeverScrollableScrollPhysics(),
                          children: homeWithUser.offerWalls
                                  .map((e) => OfferWallCard(
                                        offerWall: e,
                                        index: homeWithUser.offerWalls
                                            .indexOf(e),
                                      ))
                                  .toList(),
                        ),
                        const SizedBox(height: 30),
                        if (isRefreshing) 
                          const Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Center(child: CircularProgressIndicator()),
                          ),
                      ],
          ),
        ),
    );
  }

  Row buildTitle(BuildContext context,
      {required String title, required Widget icon}) {
    return Row(
      children: [
        const SizedBox(width: 20),
        icon,
        const SizedBox(width: 5),
        Text(title, style: context.f12400),
      ],
    );
  }

  Widget buildPopularWidget(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      width: 200,
      child: Column(
        children: [
          Image.asset(ImagesPaths.tiktokPng),
          Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(16),
                  bottomLeft: Radius.circular(16)),
              gradient: AppGradients.blue1Gradient,
              border: GradientBoxBorder(
                gradient: AppGradients.blueGradient,
                width: 2,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Row(
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Tiktok", style: context.f10600),
                      Text("Revlum", style: context.f8400)
                    ],
                  ),
                  const Spacer(),
                  Image.asset(ImagesPaths.coinPng, width: 20.w),
                  const SizedBox(width: 5),
                  Text("14.12", style: context.f10600),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}