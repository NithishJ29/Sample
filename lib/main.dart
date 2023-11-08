import 'package:flutter/material.dart';
import 'package:varidose/addInfo.dart';
import 'package:varidose/homeScreen.dart';
import 'package:varidose/help.dart';
import 'package:varidose/network_List.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}
