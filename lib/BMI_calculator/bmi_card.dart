

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BMICards extends StatelessWidget {
  const BMICards({Key? key, required this.title, required this.value, required this.child, required this.label, required this.height, required this.width,}) : super(key: key);

  final String title;
  final String value;
  final Widget child;
  final String label;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context){
      return Container(
      width:width.w,
      height:height.h,
      decoration:BoxDecoration(
        borderRadius: BorderRadius.circular(8.0.sp),
        color: Theme.of(context).primaryColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style:TextStyle(
              fontSize: 16.0.sp,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                value,
                style:TextStyle(
                  fontSize: 64.0.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 10.0.w),
              Text(
                label,
                style:TextStyle(
                  fontSize: 16.0.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),

              ),
            ],
          ),
          child,
        ],
      ),
    );
  }
}