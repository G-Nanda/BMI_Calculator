import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Home_screen.dart';

class custombutton extends StatelessWidget {
  const custombutton({
    Key? key, required this.title, this.onPressed,
  }) : super(key: key);
  final String title;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: double.infinity,height: 50.0.h,
    child:ElevatedButton(
      onPressed: onPressed,
      style:ElevatedButton.styleFrom(
        primary: Theme.of(context).primaryColor,
        onPrimary: Colors.white,

      ),
      child:Text(title),
    ),
    );
  }
}



