import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:venturo_java_code/modules/features/menu/view/components/variant_chip.dart';

import '../../../../../shared/widgets/holder_bottom_sheet.dart';
import '../../controllers/detail_menu_controller.dart';

class ToppingBottomSheet extends StatelessWidget {
  const ToppingBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 17.r, vertical: 19.r),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HolderBottomSheet(),
          13.verticalSpacingRadius,
          Text('Choose topping'.tr, style: Get.textTheme.headlineSmall),
          16.verticalSpacingRadius,
          Obx(
            () => Wrap(
              spacing: 12.r,
              runSpacing: 12.r,
              children: DetailMenuController.to.toppings
                  .map<Widget>(
                    (topping) => VariantChip(
                      text: topping.keterangan,
                      onTap: () =>
                          DetailMenuController.to.toggleTopping(topping),
                      isSelected: DetailMenuController.to.selectedToppings
                          .contains(topping),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
