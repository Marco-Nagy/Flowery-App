import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

SizedBox verticalSpacing(double? height) => SizedBox(
      height: height!.h ?? 8.h,
    );

SizedBox horizontalSpacing(double? width) => SizedBox(
      width: width!.w ?? 8.w,
    );
