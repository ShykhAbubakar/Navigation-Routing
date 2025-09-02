import 'package:flutter/material.dart';
import 'package:routing/home_screen.dart';
import 'package:routing/screen_one.dart';
import 'package:routing/screen_two.dart';
import 'package:routing/utils/route_names.dart';
class Routes{
  static Route<dynamic> generateRoutes(RouteSettings settings){
    switch(settings.name){
      case RouteNames.homeScreen:
        return MaterialPageRoute(builder: (context)=> const HomeScreen());
      case RouteNames.screenOne:
        return MaterialPageRoute(builder: (context)=>  ScreenOne(data: settings.arguments as Map,));
      case RouteNames.screenTwo:
        return MaterialPageRoute(builder: (context)=> const ScreenTwo());
      default:
        return MaterialPageRoute(builder: (context){
          return const SafeArea(
            child:  Scaffold(
              body: Center(child: Text('No Routes Found')),
            ),
          );
        });
    }
  }
}