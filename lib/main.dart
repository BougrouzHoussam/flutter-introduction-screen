// ignore_for_file: prefer_const_constructors
import 'feature/splash/presentation/splash.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'navbar.dart';
import 'package:get/get.dart';

void main() {
  runApp(const Getx());
}

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         fontFamily: 'A'
//       ),
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         drawer: Bar(),
//         // here we call it acorading to the navbar that we had call it
//         //in the navbar.dart
//         appBar: AppBar(
//           title: const Text('H Immobile'),
//           centerTitle: true,
//         ),
//       ),
//     );
//   }
// }

class Getx extends StatelessWidget {
  const Getx({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(fontFamily: 'A'),
      debugShowCheckedModeBanner: false,
      //always remember to import the package first
      home: splash(),
    );
  }
}
