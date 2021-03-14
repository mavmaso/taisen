import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taisen/app/modules/home/home_bindings.dart';
import 'package:taisen/app/modules/home/home_page.dart';

void main() => runApp(TaisenApp());

class TaisenApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Taisen Alpha',
      home: HomePage(),
      initialBinding: HomePageBinding(),
    );
  }
}
