import 'package:flutter/material.dart';
import 'package:flutter_conditional_rendering/conditional_switch.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../../configs/routes/app_routes.dart';
import '../../../../../shared/widgets/rect_shimmer.dart';
import '../../../../../shared/widgets/server_error_list_view.dart';
import '../../controllers/order_controller.dart';
import 'order_card.dart';
import 'order_data_empty.dart';

class OnGoingOrders extends StatelessWidget {
  const OnGoingOrders({super.key});
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: OrderController.to.fetchOnGoing,
      child: Obx(
        () => ConditionalSwitch.single(
          context: context,
          valueBuilder: (context) => OrderController.to.onGoingStatus.value,
          caseBuilders: {
            'error': (context) => const ServerErrorListView(),
            'empty': (context) => OrderDataEmpty(
                  title: 'Already Ordered? Track the order here.'.tr,
                ),
            'loading': (context) => ListView.separated(
                  padding: EdgeInsets.symmetric(
                    horizontal: 25.r,
                    vertical: 25.r,
                  ),
                  separatorBuilder: (_, i) => 16.verticalSpacingRadius,
                  itemCount: 5,
                  itemBuilder: (_, i) => AspectRatio(
                    aspectRatio: 378 / 138,
                    child: RectShimmer(radius: 10.r),
                  ),
                ),
          },
          fallbackBuilder: (context) => ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 25.r, vertical: 25.r),
            separatorBuilder: (_, index) => 16.verticalSpacingRadius,
            itemCount: OrderController.to.onGoingOrders.length,
            itemBuilder: (_, index) => OrderCard(
              order: OrderController.to.onGoingOrders.elementAt(index),
              onTap: () => Get.toNamed(
                AppRoutes.detailOrderView,
                arguments: OrderController.to.onGoingOrders.elementAt(index),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
