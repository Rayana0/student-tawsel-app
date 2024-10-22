import 'package:flutter/material.dart';
import 'package:flutter_windowmanager/flutter_windowmanager.dart';
import 'package:get/get.dart';
import 'package:student_tawsel_app/pages/chat.dart';
import 'package:student_tawsel_app/pages/view_all_notices.dart';
import 'package:student_tawsel_app/singup.dart';

Future<void> disableScreenCapture() async {
  await FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE);
}

void main() {
  runApp(const MyApp());
  // لمنع تسجيل او تصوسر الشاشة
  // disableScreenCapture();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xffF6F6F6)),
        useMaterial3: true,
      ),
      // ignore: prefer_const_constructors
      home: Chat(),
    );
  }
}
