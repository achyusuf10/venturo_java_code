import 'package:app_settings/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../configs/themes/colors.dart';
import '../../constants/cores/asset_const.dart';

class NetworkErrorView extends StatelessWidget {
  const NetworkErrorView({super.key});
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.r),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                /// Judul error
                Text('Error'.tr, style: Get.textTheme.headlineSmall),
                15.verticalSpacingRadius,

                /// Icon no internet
                SvgPicture.asset(AssetConst.iconNoInternet, width: 0.6.sw),

                /// Pesan error
                Text(
                  'Not connected to the internet'.tr,
                  style: Get.textTheme.titleSmall,
                  textAlign: TextAlign.center,
                ),
                15.verticalSpacingRadius,

                /// Button konfirmasi
                ElevatedButton(
                  onPressed: () => AppSettings.openDeviceSettings(),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    elevation: 2,
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24.r),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.settings, color: AppColor.darkColor),
                      16.horizontalSpaceRadius,
                      Text(
                        'Open settings'.tr,
                        style: Get.textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
                // 15.verticalSpacingRadius,

                // /// Button Kembali
                // PrimaryButton(
                //   text: 'Back'.tr,
                //   visualDensity: VisualDensity.adaptivePlatformDensity,
                //   onPressed: () {
                //     Get.back();
                //   },
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
