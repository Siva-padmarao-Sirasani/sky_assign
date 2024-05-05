import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Screens/HomeScreen.dart';
void main(){
  runApp(
    const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    ),
  );
}