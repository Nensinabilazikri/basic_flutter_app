import 'package:Batch_256/utilities/routes.dart';
import 'package:Batch_256/views/dashboardscreen.dart';
import 'package:Batch_256/views/loginscreen.dart';
import 'package:Batch_256/views/registerscreen.dart';
import 'package:Batch_256/views/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //lock screen orientation
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Batch 256',
      // theme: ThemeData(
      //   primarySwatch: Colors.redAccent,
      // ),
      home: SplashScreen(),
      routes: {
        Routes.splashscreen: (context) => SplashScreen(),
        Routes.loginscreen: (context) => LoginScreen(),
        Routes.registerscreen: (context) => RegisterScreen(),
        Routes.dashboardscreen: (context) => DashboardScreen(),
      },
    );
  }
}
