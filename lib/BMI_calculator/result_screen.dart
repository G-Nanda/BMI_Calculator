import 'package:bmi_calculator/BMI_calculator/Home_screen.dart';
import 'package:bmi_calculator/BMI_calculator/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'custom_button.dart';
import 'result_text.dart';
class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.resultText, required this.bmiResult, required this.Interpretation});

  final String bmiResult;
  final String resultText;
  final String Interpretation;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title:Text("BMI CALCULATOR"),
          centerTitle: true,
          backgroundColor: Theme.of(context).primaryColor,
          actions: [
            IconButton(onPressed:(){},
             icon: Icon(Icons.more_vert)),
          ],
        ),
        body:
         Padding(
           padding: const EdgeInsets.all(16.0),
           child: Column(
            children: [
              Text("YOUR RESULTS",style:TextStyle(
                fontSize: 36.0.sp,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor,
              )),
              SizedBox(height: 26.h),
              Container(
                width: 328.w,
                height: 481.h,
                decoration: BoxDecoration(
                  color:Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(14.0.sp),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Resulttext(
                        title: resultText,
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      Resulttext(
                        title: bmiResult,
                        fontSize: 96.0.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                       const Resulttext(
                        title: "EXPLANATION",
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      Resulttext(
                        title: Interpretation,
                        fontSize: 16.0.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(),
              custombutton(
                title:"BACK",
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
           ),
         ),
      ),
    );
  }
}

