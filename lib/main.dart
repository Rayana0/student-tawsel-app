import 'package:flutter/material.dart';
import 'package:student_tawsel_app/pages/home_student.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xffF6F6F6)),
        useMaterial3: true,
      ),
      // ignore: prefer_const_constructors
      home: HomeStudent(),
    );
  }
}
