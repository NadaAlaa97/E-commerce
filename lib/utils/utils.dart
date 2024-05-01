import 'package:firstproject/utils/colors.dart';
import 'package:flutter/material.dart';

const kTitleStyle = TextStyle(
  fontSize: 28,
  fontWeight: FontWeight.bold,
  letterSpacing: 1.5,
  color: Colors.white,
);
const kNormalStyle = TextStyle(
  fontSize: 18,
  height: 1.5,
  color: Colors.grey,
  fontWeight: FontWeight.w400,
);
const kNormalStyle1 = TextStyle(
  fontSize: 30,
  height: 1.2,
  color: Colors.black,
  fontWeight: FontWeight.w600,
);
// build indicators
List<Widget> buildIndicators(){
  List<Widget> list = [];
  for(int i = 0; i < 4; i++){
    list.add(i == 1 ? indicator(true) : indicator(false));
  }
  return list;
}
Widget indicator(bool isActive){
  return AnimatedContainer(
    margin: const EdgeInsets.symmetric(horizontal: 5.0),
    duration: const Duration(microseconds: 150),
height: 8.0,
    width: isActive ? 30.0 : 8.0,
    decoration: BoxDecoration(color: isActive ? kOrangeColor : Colors.grey,
    borderRadius: BorderRadius.circular(30),
    ),
  );
}