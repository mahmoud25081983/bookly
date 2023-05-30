import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'features/presentation/views/splasg_screen.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: 'Flutter Demo',
      home: SplashView(),
    );
  }
}
