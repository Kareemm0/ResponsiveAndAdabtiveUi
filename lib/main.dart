import 'package:flutter/material.dart';
import 'package:responsive_and_adabtive_app/Intrinsic_Widget/intrinsic_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntrinsicWidget(),
      //AspectRatioWidget(),
      //LayoutuilderWidget(),
      //4- MediaQueryWidget(),
    );
  }
}
