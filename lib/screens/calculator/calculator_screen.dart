import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_cartax_v2/screens/calculator/calculate_button.dart';
import 'package:flutter_cartax_v2/screens/result/result_screen.dart';
import 'package:flutter_cartax_v2/screens/calculator/type.dart';
import 'package:flutter_cartax_v2/screens/calculator/grobgrab.dart';
import 'package:flutter_cartax_v2/screens/calculator/uberry.dart';
import 'package:flutter_cartax_v2/screens/calculator/calculator.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  int carTax = 0;
  int typeIndex = 1;
  int km = 3;
  int passenger = 0;
  

  void changeTypeIndex(int newTypeIndex){
    setState(() {
      typeIndex = newTypeIndex;
    });
  }

  void changekm(double newkm){
    setState(() {
      km = newkm.toInt();
    });
  }
  void changepassenger(int newpassenger){
    setState(() {
      passenger = newpassenger;
    });
  }
  void changeKL(double newKL){
    setState(() {
      passenger = newKL.toInt();
    });
  }

  void calculateButtonClick(){
    setState(() {
      if (typeIndex==1){
        carTax = Calculator.grobgrab(km: km, passenger: passenger);
      }else if(typeIndex==2){
        carTax = Calculator.uberry(km: km, passenger: passenger);
      }

      Navigator.push(context,
      MaterialPageRoute(builder: (context)=> ResultScreen(carTax: carTax)),
      );
    });
  }
  


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        //แสดงชนิดรถ
        Type(typeIndex: typeIndex, carTypeChange: changeTypeIndex //Code,
            ),
            //กรอกข้อมูลเพื่อคำนวลภาษี
        (typeIndex == 1)? Grobgrab(
          km: km, 
          passenger: passenger, 
          changekm: changekm, 
          changepassenger: changepassenger)
          :Uberry(
            km: km, 
          passenger: passenger, 
          changekm: changekm, 
          changepassenger: changepassenger
          ),        
           //Code Car Detail
        //ปุ่มกดคำนวนภาษี
        CalculateButton(
          buttonClickedFunction: calculateButtonClick //Code,
            ),
        
      ],
    );
  }
}
