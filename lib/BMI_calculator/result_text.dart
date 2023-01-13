import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Resulttext extends StatelessWidget {
  const Resulttext({
    Key? key, required this.title, required this.fontSize, required this.color, required this.fontWeight,
  }) : super(key: key);

  final String title;
  final double fontSize;
  final Color color;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style:TextStyle(
        fontSize: fontSize.sp,
        fontWeight: fontWeight,
        color:color,
      ),
    );
  }
}