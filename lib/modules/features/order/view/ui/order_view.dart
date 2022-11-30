import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../configs/themes/colors.dart';
import '../../../../../shared/styles/shapes.dart';
import '../components/history_orders.dart';
import '../components/ongoing_orders.dart';

class OrderView extends StatelessWidget {
  const OrderView({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: Material(
            clipBehavior: Clip.antiAlias,
            elevation: 2,
            color: Colors.white,
            shape: CustomShape.bottomRoundedShape,
            child: SafeArea(
              child: TabBar(
                indicatorColor: AppColor.blueColor,
                indicatorWeight: 2.r,
                unselectedLabelColor: AppColor.darkColor2,
                labelColor: AppColor.blueColor,
                labelStyle: Get.textTheme.titleSmall,
                tabs: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.r),
                    child: Tab(text: 'On going'.tr),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.r),
                    child: Tab(text: 'History'.tr),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            OnGoingOrders(),
            HistoryOrders(),
          ],
        ),
      ),
    );
  }
}
