import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:venturo_java_code/utils/extensions/currency_extension.dart';

import '../../../../../configs/themes/colors.dart';
import '../../../../../constants/commons/constants.dart';
import '../../../../../constants/cores/asset_const.dart';
import '../../../../../shared/widgets/quantity_counter.dart';
import '../../../../models/detail_order.dart';

class DetailOrderCard extends StatelessWidget {
  final DetailOrder detailOrder;

  const DetailOrderCard(this.detailOrder, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ink(
      padding: EdgeInsets.all(7.r),
      decoration: BoxDecoration(
        color: AppColor.lightColor2,
        borderRadius: BorderRadius.circular(10.r),
        boxShadow: [
          BoxShadow(
            color: AppColor.darkColor2.withOpacity(0.2),
            offset: const Offset(0, 2),
            blurRadius: 8,
            spreadRadius: -1,
          ),
        ],
      ),
      child: Row(
        children: [
          /* Image */
          Container(
            height: 90.r,
            width: 90.r,
            margin: EdgeInsets.only(right: 12.r),
            padding: EdgeInsets.all(5.r),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: AppColor.lightColor,
            ),
            child: CachedNetworkImage(
              imageUrl: detailOrder.foto ?? AppConst.defaultMenuPhoto,
              fit: BoxFit.contain,
              errorWidget: (context, _, __) => CachedNetworkImage(
                imageUrl: AppConst.defaultMenuPhoto,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  detailOrder.nama,
                  style: Get.textTheme.titleMedium,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                Text(
                  int.parse(detailOrder.harga).toRupiah(),
                  style: Get.textTheme.bodyMedium!.copyWith(
                      color: AppColor.blueColor, fontWeight: FontWeight.bold),
                ),
                5.verticalSpacingRadius,
                Row(
                  children: [
                    SvgPicture.asset(AssetConst.iconEdit, height: 12.r),
                    7.horizontalSpaceRadius,
                    Expanded(
                      child: TextFormField(
                        initialValue: detailOrder.catatan,
                        style: Get.textTheme.labelMedium,
                        enabled: false,
                        decoration: InputDecoration.collapsed(
                          hintText: 'No notes'.tr,
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 75.r,
            padding: EdgeInsets.only(left: 12.r, right: 5.r),
            child: QuantityCounter(quantity: detailOrder.jumlah),
          ),
        ],
      ),
    );
  }
}
