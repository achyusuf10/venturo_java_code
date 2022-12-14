import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:badges/badges.dart';
import 'package:venturo_java_code/modules/features/order/controllers/order_controller.dart';
import '../../../../configs/themes/colors.dart';
import '../../../../constants/cores/asset_const.dart';
import '../../home/view/ui/home_view.dart';
import '../../order/view/ui/order_view.dart';
import '../../profile/view/ui/profile_view.dart';
import '../controllers/dashboard_controller.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => IndexedStack(
          index: DashboardController.to.tabIndex.value,
          children: const [
            HomeView(),
            OrderView(),
            ProfileView(),
          ],
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30.r)),
        child: Obx(
          () => BottomNavigationBar(
            onTap: DashboardController.to.changeTabIndex,
            currentIndex: DashboardController.to.tabIndex.value,
            backgroundColor: AppColor.darkColor2,
            selectedLabelStyle: Get.textTheme.labelSmall,
            unselectedLabelStyle: Get.textTheme.labelSmall,
            selectedItemColor: Colors.white,
            unselectedItemColor: AppColor.greyColor2,
            items: [
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(bottom: 5.r),
                  child: SvgPicture.asset(
                    AssetConst.iconHome,
                    color: AppColor.greyColor2,
                    height: 27.r,
                    width: 27.r,
                  ),
                ),
                activeIcon: Padding(
                  padding: EdgeInsets.only(bottom: 5.r),
                  child: SvgPicture.asset(
                    AssetConst.iconHome,
                    color: Colors.white,
                    height: 27.r,
                    width: 27.r,
                  ),
                ),
                label: 'Home'.tr,
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(bottom: 5.r),
                  child: Obx(() {
                    return Badge(
                      showBadge: OrderController.to.onGoingOrders.isNotEmpty,
                      badgeColor: AppColor.blueColor,
                      badgeContent: Text(
                        OrderController.to.onGoingOrders.length.toString(),
                        style: Get.textTheme.labelMedium!
                            .copyWith(color: Colors.white),
                      ),
                      child: SvgPicture.asset(
                        AssetConst.iconOrder,
                        color: AppColor.greyColor2,
                        height: 27.r,
                        width: 27.r,
                      ),
                    );
                  }),
                ),
                activeIcon: Padding(
                  padding: EdgeInsets.only(bottom: 5.r),
                  child: Obx(() {
                    return Badge(
                      showBadge: OrderController.to.onGoingOrders.isNotEmpty,
                      badgeColor: AppColor.blueColor,
                      badgeContent: Text(
                        OrderController.to.onGoingOrders.length.toString(),
                        style: Get.textTheme.labelMedium!
                            .copyWith(color: Colors.white),
                      ),
                      child: SvgPicture.asset(
                        AssetConst.iconOrder,
                        color: Colors.white,
                        height: 27.r,
                        width: 27.r,
                      ),
                    );
                  }),
                ),
                label: 'Order'.tr,
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(bottom: 5.r),
                  child: SvgPicture.asset(
                    AssetConst.iconProfile,
                    color: AppColor.greyColor2,
                    height: 27.r,
                    width: 27.r,
                  ),
                ),
                activeIcon: Padding(
                  padding: EdgeInsets.only(bottom: 5.r),
                  child: SvgPicture.asset(
                    AssetConst.iconProfile,
                    color: Colors.white,
                    height: 27.r,
                    width: 27.r,
                  ),
                ),
                label: 'Profile'.tr,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
