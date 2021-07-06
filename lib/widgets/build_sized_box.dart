import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BuildSizedBox extends StatelessWidget {
  const BuildSizedBox({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width?.w,
      height: height?.h,
    );
  }
}
