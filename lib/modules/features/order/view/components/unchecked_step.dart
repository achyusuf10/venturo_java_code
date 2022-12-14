import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../configs/themes/colors.dart';

class UncheckedStep extends StatelessWidget {
  const UncheckedStep({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6.r),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [],
      ),
      child: Icon(
        Icons.circle,
        color: AppColor.darkColor4,
        size: 18.r,
      ),
    );
  }
}
