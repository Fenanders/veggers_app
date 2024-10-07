import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:veggers_app/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: MainPage(),
        // body: SafeArea(
        //     child: Center(
        //       child: Column(
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         crossAxisAlignment: CrossAxisAlignment.center,
        //                 children: [
        //       LottieBuilder.asset('assets/veg-lottie.json'),
        //       const Text('Veggers')
        //                 ],
        //               ),
        //     )),
      ),
    );
  }
}
