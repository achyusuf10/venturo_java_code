import 'package:flutter/material.dart';
import 'package:flutter_conditional_rendering/conditional.dart';
import 'package:flutter_conditional_rendering/conditional_switch.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../configs/routes/app_routes.dart';
import '../../../../../shared/widgets/empty_data_vertical.dart';
import '../../../../../shared/widgets/rect_shimmer.dart';
import '../../../../../shared/widgets/server_error_list_view.dart';
import '../../controllers/order_controller.dart';
import 'date_picker.dart';
import 'dropdown_status.dart';
import 'order_card.dart';
import 'order_data_empty.dart';

class HistoryOrders extends StatelessWidget {
  const HistoryOrders({super.key});
  @override
  Widget build(BuildContext context) {
    final Map<String, String> filterStatus = {
      'all': 'All status'.tr,
      'completed': 'Completed'.tr,
      'canceled': 'Canceled'.tr,
    };
    return RefreshIndicator(
      onRefresh: OrderController.to.fetchHistory,
      child: Obx(
        () => ConditionalSwitch.single(
          context: context,
          valueBuilder: (context) => OrderController.to.historyStatus.value,
          caseBuilders: {
            'error': (context) => const ServerErrorListView(),
            'empty': (context) => OrderDataEmpty(
                  title: 'Start placing orders.'.tr,
                  subtitle:
                      'The food you ordered will appear here so you can find your favorite menu again!'
                          .tr,
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
          fallbackBuilder: (context) => ListView(
            padding: EdgeInsets.symmetric(horizontal: 25.r, vertical: 25.r),
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: DropdownStatus(
                      items: filterStatus,
                      selectedItem: OrderController.to.selectedCategory,
                      onChanged: (value) =>
                          OrderController.to.setFilter(category: value),
                    ),
                  ),
                  22.horizontalSpaceRadius,
                  Expanded(
                    child: DatePicker(
                      selectedDate: OrderController.to.selectedDateRange,
                      onChanged: (value) =>
                          OrderController.to.setFilter(dateRange: value),
                    ),
                  ),
                ],
              ),
              25.verticalSpacingRadius,
              ...Conditional.list(
                context: context,
                conditionBuilder: (context) =>
                    OrderController.to.historyOrderFiltered.isEmpty,
                widgetBuilder: (context) => [
                  100.verticalSpacingRadius,
                  const EmptyDataVertical(),
                  100.verticalSpacingRadius,
                ],
                fallbackBuilder: (context) =>
                    OrderController.to.historyOrderFiltered
                        .map(
                          (order) => Padding(
                            padding: EdgeInsets.only(bottom: 16.r),
                            child: OrderCard(
                              order: order,
                              onOrderAgain: () =>
                                  OrderController.to.onOrderAgain(order),
                              onTap: () => Get.toNamed(
                                AppRoutes.detailOrderView,
                                arguments: order,
                              ),
                            ),
                          ),
                        )
                        .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
