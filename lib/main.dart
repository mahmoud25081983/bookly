import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'constants.dart';
import 'features/splash/presentation/views/splasg_screen.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimeryColor,
      ),
      home: const SplashView(),
    );
  }
}
