import 'dart:ui' show PointerDeviceKind;
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:proyecto_pmsn_villasenor_y_vazquez/core/app_theme.dart';
import 'package:proyecto_pmsn_villasenor_y_vazquez/routes.dart';
import 'package:proyecto_pmsn_villasenor_y_vazquez/src/view/screen/home_screen.dart';
import 'package:proyecto_pmsn_villasenor_y_vazquez/src/view/screen/login_screen.dart';
import 'package:proyecto_pmsn_villasenor_y_vazquez/src/view/screen/onboading_screen.dart';
import 'package:proyecto_pmsn_villasenor_y_vazquez/src/view/screen/product_prueba_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
        },
      ),
      debugShowCheckedModeBanner: false,
      home: const ProductScreen(),
      routes: getApplicationRoutes(),
      theme: AppTheme.lightAppTheme,
    );
  }
}
