import 'package:flutter/material.dart';
import 'package:routing/home_screen.dart';
import 'package:routing/screen_one.dart';
import 'package:routing/screen_two.dart';
import 'package:routing/utils/route_names.dart';
import 'package:routing/utils/screen_three.dart';

class Routes{
  static Route<dynamic> generateRoutes(RouteSettings settings){
    switch(settings.name){
      case RouteNames.homeScreen:
        return MaterialPageRoute(builder: (context)=> const HomeScreen());
      case RouteNames.screenOne:
        return MaterialPageRoute(builder: (context)=> const ScreenOne());
      case RouteNames.screenTwo:
        return MaterialPageRoute(builder: (context)=> const ScreenTwo());
      case RouteNames.screenThree:
        return MaterialPageRoute(builder: (context)=> const ScreenThree());
      default:
        return MaterialPageRoute(builder: (context){
          return const Scaffold(
            body: Text('No Routes Found'),
          );
        });
    }
  }
}