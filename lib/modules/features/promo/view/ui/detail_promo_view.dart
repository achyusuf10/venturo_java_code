import 'package:flutter/material.dart';
import 'package:flutter_conditional_rendering/conditional.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:venturo_java_code/configs/themes/colors.dart';
import 'package:venturo_java_code/utils/extensions/string_extension.dart';
import 'package:flutter_html/flutter_html.dart';
import '../../../../../constants/cores/asset_const.dart';
import '../../../../../shared/styles/shapes.dart';
import '../../../../../shared/widgets/promo_card.dart';
import '../../../../../shared/widgets/rect_shimmer.dart';
import '../../controllers/detail_controller.dart';

class DetailPromoView extends StatelessWidget {
  const DetailPromoView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        leading: IconButton(
          splashRadius: 30.r,
          icon: Icon(Icons.chevron_left, color: Colors.black, size: 36.r),
          onPressed: () => Get.back(closeOverlays: true),
        ),
        centerTitle: true,
        title: Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            SvgPicture.asset(AssetConst.iconPromo, width: 23.r),
            10.horizontalSpaceRadius,
            Text('Promo'.tr, style: Get.textTheme.titleMedium),
          ],
        ),
        shape: CustomShape.bottomRoundedShape,
      ),
      backgroundColor: AppColor.lightColor3,
      body: Column(
        children: [
          /// Kartu promo
          Padding(
            padding: EdgeInsets.all(25.r),
            child: Obx(
              () => Conditional.single(
                context: context,
                conditionBuilder: (context) =>
                    DetailPromoController.to.status.value == 'success',
                widgetBuilder: (context) => AspectRatio(
                  aspectRatio: 378 / 181,
                  child: PromoCard(
                    promo: DetailPromoController.to.promo.value!,
                    shadow: true,
                  ),
                ),
                fallbackBuilder: (context) => AspectRatio(
                  aspectRatio: 378 / 181,
                  child: RectShimmer(
                    width: 378.r,
                    height: 181.r,
                    radius: 15.r,
                  ),
                ),
              ),
            ),
          ),

          /// Info promo
          Container(
            clipBehavior: Clip.antiAlias,
            padding: EdgeInsets.symmetric(horizontal: 22.r, vertical: 45.r),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(30.r)),
            ),
            child: Column(
              children: [
                Obx(
                  () => Conditional.single(
                    context: context,
                    conditionBuilder: (context) =>
                        DetailPromoController.to.status.value == 'success',
                    widgetBuilder: (context) => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        /// Judul promo
                        Expanded(
                          child: Text(
                            DetailPromoController.to.promo.value!.nama
                                .toTitleCase(),
                            style: Get.textTheme.titleMedium,
                          ),
                        ),
                        25.horizontalSpaceRadius,

                        /// Nominal promo
                        Text(
                          DetailPromoController.to.promo.value!.typeAmountLabel,
                          style: Get.textTheme.titleMedium!
                              .copyWith(color: AppColor.blueColor),
                        ),
                      ],
                    ),
                    fallbackBuilder: (context) => RectShimmer(height: 25.r),
                  ),
                ),
                17.verticalSpacingRadius,
                Divider(color: const Color(0xFF2E2E2E).withOpacity(0.25)),
                13.verticalSpacingRadius,

                /// Judul syarat dan ketentuan
                Row(
                  children: [
                    const Icon(Icons.list, color: AppColor.blueColor),
                    14.horizontalSpaceRadius,
                    Text(
                      'Terms and conditions'.tr,
                      style: Get.textTheme.titleSmall,
                    ),
                  ],
                ),
                10.verticalSpacingRadius,

                /// Informasi syarat dan ketentuan
                Obx(
                  () => Conditional.single(
                    context: context,
                    conditionBuilder: (context) =>
                        DetailPromoController.to.status.value == 'success',
                    widgetBuilder: (context) => Html(
                      data:
                          DetailPromoController.to.promo.value!.syaratKetentuan,
                      style: {
                        '*': Style.fromTextStyle(
                          Get.textTheme.labelMedium!,
                        ),
                        'body': Style(
                          margin: Margins.zero,
                          padding: EdgeInsets.zero,
                        ),
                      },
                    ),
                    fallbackBuilder: (context) => RectShimmer(height: 100.r),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
