import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../configs/themes/colors.dart';

class HolderBottomSheet extends StatelessWidget {
  const HolderBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: AppColor.greyColor3.withOpacity(0.5),
        height: 4.r,
        width: 104.r,
      ),
    );
  }
}
