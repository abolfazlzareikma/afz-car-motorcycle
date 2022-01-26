import 'package:car_motor/Material/MaterialData.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: '/MaterialData',
      defaultTransition: Transition.downToUp,
      getPages: [
        new GetPage(name: '/MaterialData', page: () => new MaterialData()),
      ],
      theme: ThemeData(
        primarySwatch: Colors.grey,
        primaryColor: Colors.grey,
      ),
    );
  }
}