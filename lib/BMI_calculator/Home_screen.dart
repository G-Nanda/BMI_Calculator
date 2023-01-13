import 'dart:ui';
import 'package:bmi_calculator/BMI_calculator/bmi_calculator%20.dart';
import 'package:bmi_calculator/BMI_calculator/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'bmi_button.dart';
import 'bmi_card.dart';
import 'custom_button.dart';
import 'result_screen.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int age=15;
  int weight=75;
  int height=150;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const Drawer(),
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: Text("BMI CALCULATOR"),
          centerTitle: true,
          actions: [
             IconButton(onPressed: (){},
              icon: const Icon(Icons.more_vert),),
          ],
        ),
        body: 
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal:16.0,
            vertical: 24.0,
          ),
          child: Column(
            children: [
              Text(
                "Check your Body Mass Index (BMI) to know if you are in shape!",
                style:TextStyle(
                  fontSize: 16.0.sp,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height:22.0.sp),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   BMICards(
                width: 156.0.w,
                height: 215.0.h,
                title:"Age",
                value: age.toString(),
                label:"YRS",
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children:  [
                    bmibutton(icon:Icons.remove,onPressed: () {
                      setState(() {
                        age--;
                      });
                    },),
                    bmibutton(icon:Icons.add,onPressed: () {
                      setState(() {
                        age++;
                      });
                    },),
                  ],
                ),
                ),
                BMICards(
                width: 156.0.w,
                height: 215.0.h,
                title:"Weight",
                value: weight.toString(),
                label: "KG",
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children:  [
                    bmibutton(icon:Icons.remove,onPressed: () {
                      setState(() {
                        weight--;
                      });
                    },),
                    bmibutton(icon:Icons.add,onPressed: () {
                      setState(() {
                        weight++;
                      });
                    },)
                  ],
                ),
                ),
                ],
              ),
              SizedBox(height: 32.0.h,),
              BMICards(
                width: double.infinity,
                height:215.0.h,
                title: "HEIGHT",
                value:height.toString(),
                label: "CM",
                child:Slider(
                  min: 100.0,
                  max: 200.0,
                  value: height.toDouble(),
                  activeColor: Colors.white,
                  inactiveColor: Colors.white.withOpacity(0.45),
                  onChanged: (newValue){
                    setState(() {
                      height=newValue.toInt();
                    });
                  },
                ),
              ),
              SizedBox(height: 43.0.h),
              Text(
                "Tap the button below to check your BMI result",
                style:TextStyle(
                  fontSize: 16.0.sp,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
                ),
                Spacer(),
                custombutton(
                  title:"CALCULATE",
                  onPressed: (() {
                    Navigator.push(
                    context,
                    MaterialPageRoute(
                    builder:(context) {
                      BMICalculator bmiCalculator=BMICalculator(
                        height: height,
                         weight: weight,
                         );
                        return ResultScreen(
                          bmiResult: bmiCalculator.CalcualteBMI(),
                           resultText: bmiCalculator.getResult(),
  
                            
                           Interpretation: bmiCalculator.getInterpretation(),
                           );
                    },
                  
                    ),
                  );
                }
              ),
                ),
            ],),
        ),
      ),
    );
  }
}

