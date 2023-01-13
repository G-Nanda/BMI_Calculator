import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'bmi_card.dart';

class bmibutton extends StatelessWidget {
  const bmibutton({
    Key? key, required this.icon,
     this.onPressed,
  }) : super(key: key);

  final IconData icon;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(onPressed: onPressed,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.0.sp),
          ),
    fillColor: Colors.white,
    constraints: BoxConstraints.tightFor(
      height: 46.0.h,
      width: 46.0.w,
    ),
    elevation: 6,
    child: Icon(
     icon,
     size:30.0.sp,
     color:Theme.of(context).primaryColor,
    ),
   );
  } 
  }