
import 'package:flutter/material.dart';
import 'package:flutter_responsive_dashboard/constants.dart';
import 'package:flutter_responsive_dashboard/view/main_Screen.dart';
import 'package:flutter_responsive_dashboard/view_model/menu_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Admin Panel',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
        canvasColor: secondaryColor,
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => MenuProvider(),
          ),
        ],
        child: MainScreen(),
      ),
    );
  }
}
