import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:magic_rewards/config/errors/failure.dart';
import 'package:magic_rewards/config/styles/app_colors.dart';
import 'package:magic_rewards/shared/widgets/components/app_avatar.dart';
import 'package:magic_rewards/shared/widgets/components/app_dialogs.dart';
import 'package:magic_rewards/shared/widgets/components/failure_component.dart';
import 'package:magic_rewards/shared/extensions/theme_extensions/text_theme_extension.dart';
import 'package:magic_rewards/config/paths/images_paths.dart';
import 'package:magic_rewards/core/data/datasources/local/cache/cache_storage_services.dart';
import 'package:magic_rewards/generated/l10n.dart';
import 'package:magic_rewards/core/presentation/providers/app_config_providers.dart';
import 'package:magic_rewards/features/profile/presentation/providers/profile_providers.dart';
import 'package:magic_rewards/features/profile/presentation/state/profile_state.dart';
import 'package:magic_rewards/features/profile/presentation/widgets/profile_tile.dart';
import 'package:magic_rewards/core/presentation/routes/route_configuration.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../../shared/widgets/components/custom_appbar.dart';

class ProfileScreen extends ConsumerWidget {
  ProfileScreen({super.key});

  final RefreshController _refreshController = RefreshController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: CustomAppBar(
        titleText: S.of(context).profile,
      ),
      body: SmartRefresher(
        controller: _refreshController,
        onRefresh: () async {
          await ref.read(profileProvider.notifier).refresh();
          _refreshController.refreshCompleted();
        },
        child: ListView(
          children: [
            const SizedBox(height: 40),
            buildUserInfo(context),
            const SizedBox(height: 40),
            buildEmail(context),
            buildDivider(),
            buildPoints(context, ref),
            buildDivider(),
            buildProfileTiles(context, ref),
            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }

  Widget buildPoints(BuildContext context, WidgetRef ref) {
    final profileState = ref.watch(profileProvider);
    
    return profileState.when(
      initial: () => Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          buildInfoColumn(context,
              icon: ImagesPaths.balanceSvg,
              title: S.of(context).balance,
              value: "-"),
          buildInfoColumn(context,
              icon: ImagesPaths.redeemSvg,
              title: S.of(context).redeem,
              value: "-"),
          buildInfoColumn(context,
              icon: ImagesPaths.totalEarnSvg,
              title: S.of(context).totalEarn,
              value: "-")
        ],
      ),
      loading: () => Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          buildInfoColumn(context,
              icon: ImagesPaths.balanceSvg,
              title: S.of(context).balance,
              value: "-"),
          buildInfoColumn(context,
              icon: ImagesPaths.redeemSvg,
              title: S.of(context).redeem,
              value: "-"),
          buildInfoColumn(context,
              icon: ImagesPaths.totalEarnSvg,
              title: S.of(context).totalEarn,
              value: "-")
        ],
      ),
      error: (errorMessage) => FailureComponent(failure: Failure(errorMessage)),
      success: (profile) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          buildInfoColumn(context,
              icon: ImagesPaths.balanceSvg,
              title: S.of(context).balance,
              value: profile.balance),
          buildInfoColumn(context,
              icon: ImagesPaths.redeemSvg,
              title: S.of(context).redeem,
              value: profile.redeemedPoints),
          buildInfoColumn(context,
              icon: ImagesPaths.totalEarnSvg,
              title: S.of(context).totalEarn,
              value: profile.totalPoints)
        ],
      ),
      refreshing: (currentData) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          buildInfoColumn(context,
              icon: ImagesPaths.balanceSvg,
              title: S.of(context).balance,
              value: currentData.balance),
          buildInfoColumn(context,
              icon: ImagesPaths.redeemSvg,
              title: S.of(context).redeem,
              value: currentData.redeemedPoints),
          buildInfoColumn(context,
              icon: ImagesPaths.totalEarnSvg,
              title: S.of(context).totalEarn,
              value: currentData.totalPoints)
        ],
      ),
    );
  }

  Divider buildDivider() =>
      const Divider(height: 30, color: AppColors.grey, thickness: 0.5);

  Widget buildEmail(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        children: [
          const Icon(Icons.mail, color: AppColors.white1),
          const SizedBox(width: 15),
          Text(CacheStorageServices().email,
              style: context.f12400?.copyWith(color: AppColors.grey)),
        ],
      ),
    );
  }

  Padding buildUserInfo(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Row(
        children: [
          const AppAvatar(radius: 40),
          const SizedBox(width: 20),
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(CacheStorageServices().fullname,
                    style: context.f18700?.copyWith(color: AppColors.white1)),
                Text("@${CacheStorageServices().username}",
                    style: context.f14400?.copyWith(color: AppColors.grey))
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildInfoColumn(BuildContext context,
      {required String icon, required String title, required String value}) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(icon, width: 40.w),
            Text(title,
                style: context.f14600
                    ?.copyWith(color: AppColors.white1, height: 1.5)),
            Text(value,
                style: context.f14400
                    ?.copyWith(color: AppColors.white1, height: 1.5)),
          ],
        ),
      ),
    );
  }

  Widget buildProfileTiles(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        ProfileTile(
            icon: ImagesPaths.historySvg,
            title: S.of(context).history,
            onTap: () {
              context.goToTransactions();
            }),
        ProfileTile(
            icon: ImagesPaths.termsSvg,
            title: S.of(context).privacyPolicy,
            onTap: () {
              context.goToTerms();
            }),
        ProfileTile(
            icon: ImagesPaths.contactUsSvg,
            title: S.of(context).contactUs,
            onTap: () {
              context.goToContactUs();
            }),
        ProfileTile(
            icon: ImagesPaths.signOutSvg,
            title: S.of(context).signOut,
            onTap: () async {
              final confirmed = await AppDialogs.showConfirmDialog(context,
                      text: S.of(context).areYouSureToSignOut,
                      confirmText: S.of(context).signOut);
              if (confirmed && context.mounted) {
                try {
                  // Show loading indicator or disable interaction while logging out
                  await ref.read(appConfigProvider.notifier).logOut();
                  
                  // Check if widget is still mounted before navigation
                  if (context.mounted) {
                    context.goToLogin();
                  }
                } catch (error) {
                  // Handle logout error gracefully
                  if (context.mounted) {
                    // Still navigate to login even if there was an error
                    // since the intent is to log out the user
                    context.goToLogin();
                  }
                }
              }
            }),
        ProfileTile(
            icon: ImagesPaths.deleteAccountSvg,
            title: S.of(context).deleteAccount,
            onTap: () async {
              final confirmed = await AppDialogs.showConfirmDialog(context,
                      text: S.of(context).areYouSureToDeleteAccount,
                      confirmText: S.of(context).delete);
              if (confirmed && context.mounted) {
                try {
                  // Note: Delete account functionality would need a separate provider
                  // For now, just log out
                  await ref.read(appConfigProvider.notifier).logOut();
                  
                  if (context.mounted) {
                    context.goToLogin();
                  }
                } catch (error) {
                  // Handle error gracefully
                  if (context.mounted) {
                    context.goToLogin();
                  }
                }
              }
            },
            red: true),
      ],
    );
  }
}
