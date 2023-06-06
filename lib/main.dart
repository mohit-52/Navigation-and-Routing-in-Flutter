import 'package:flutter/material.dart';
import 'package:navigation_and_routing/Utils/routes_names.dart';
import 'package:navigation_and_routing/home_screen.dart';
import 'package:navigation_and_routing/screen_2.dart';
import 'package:navigation_and_routing/screen_3.dart';

import 'Utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute:  RouteName.homeScreen,
      onGenerateRoute: Routes.generateRoute,
      // routes: {
      //   HomeScreen.id : (context) => HomeScreen(),
      //   ScreenTwo.id : (context) => ScreenTwo(),
      //   ScreenThree.id : (context) => ScreenThree(),
      // },
      // home: const HomeScreen(),
    );
  }
}


