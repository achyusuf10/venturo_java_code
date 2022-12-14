import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_conditional_rendering/flutter_conditional_rendering.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../../../configs/routes/app_routes.dart';
import '../../../../../configs/themes/colors.dart';
import '../../../../../constants/cores/asset_const.dart';
import '../../../../../shared/styles/shapes.dart';
import '../../../../../shared/widgets/danger_button.dart';
import '../../../../../shared/widgets/primary_button.dart';
import '../../../../../shared/widgets/tile_option.dart';
import '../../../../models/voucher.dart';
import '../../controllers/cart_controller.dart';

class DetailVoucherView extends StatelessWidget {
  const DetailVoucherView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Voucher voucher = Get.arguments as Voucher;

    return Scaffold(
      backgroundColor: AppColor.lightColor3,
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        leading: IconButton(
          splashRadius: 30.r,
          icon: Icon(Icons.chevron_left, color: Colors.black, size: 36.r),
          onPressed: () => Get.back(closeOverlays: true),
        ),
        centerTitle: true,
        title: Text('Detail voucher'.tr, style: Get.textTheme.titleMedium),
        shape: CustomShape.bottomRoundedShape,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20.r),
            child: Hero(
              tag: 'voucher-image-${voucher.idVoucher}',
              child: CachedNetworkImage(
                imageUrl: voucher.infoVoucher,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 25.r, vertical: 45.r),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(30.r)),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    voucher.nama,
                    style: Get.textTheme.titleMedium!
                        .copyWith(color: AppColor.blueColor),
                  ),
                  Conditional.single(
                    context: context,
                    conditionBuilder: (context) => voucher.catatan != null,
                    widgetBuilder: (context) => Html(
                      data: voucher.catatan,
                      style: {
                        '*': Style.fromTextStyle(
                          Get.textTheme.labelMedium!,
                        ),
                        'body': Style(
                          margin: Margins.all(0),
                          padding: EdgeInsets.zero,
                        ),
                      },
                    ),
                    fallbackBuilder: (context) => const SizedBox(),
                  ),
                  40.verticalSpacingRadius,
                  Divider(
                      color: AppColor.darkColor2.withOpacity(0.25), height: 1),
                  TileOption(
                    icon: AssetConst.iconDate,
                    title: 'Valid date'.tr,
                    message:
                        '${DateFormat('dd/MM/yyyy').format(voucher.periodeMulai!)} - ${DateFormat('dd/MM/yyyy').format(voucher.periodeSelesai!)}',
                    titleStyle: Get.textTheme.headlineSmall,
                  ),
                  Divider(
                      color: AppColor.darkColor2.withOpacity(0.25),
                      height: 2.r),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10.r, horizontal: 22.r),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(30.r)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 20,
                spreadRadius: -1,
                offset: const Offset(0, 1),
              ),
            ],
          ),
          child: Conditional.single(
            context: context,
            conditionBuilder: (context) =>
                voucher != CartController.to.selectedVoucher.value,
            widgetBuilder: (context) => PrimaryButton(
              text: 'Use voucher'.tr,
              onPressed: () {
                CartController.to.setVoucher(voucher);
                Get.until(ModalRoute.withName(AppRoutes.cartView));
              },
            ),
            fallbackBuilder: (context) => DangerButton(
              text: 'Use voucher later'.tr,
              onPressed: () {
                CartController.to.setVoucher(null);
                Get.until(ModalRoute.withName(AppRoutes.cartView));
              },
            ),
          ),
        ),
      ),
    );
  }
}
