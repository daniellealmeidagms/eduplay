import 'package:eduplay/screens/askcontent.dart';
import 'package:eduplay/screens/askquestion.dart';
import 'package:eduplay/screens/content.dart';
import 'package:eduplay/screens/home.dart';
import 'package:eduplay/screens/live.dart';
import 'package:eduplay/screens/progress.dart';
import 'package:eduplay/screens/search.dart';
import 'package:eduplay/screens/space.dart';
import 'package:eduplay/screens/splash.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route<dynamic> generateRoutes(RouteSettings settings){
    switch(settings.name){
      case "/":
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case "/home":
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case "/live":
        return MaterialPageRoute(builder: (_) => LiveScreen());
      case "/space":
        return MaterialPageRoute(builder: (_) => SpaceScreen());
      case "/search":
        return MaterialPageRoute(builder: (_) => SearchScreen());
      case "/progress":
        return MaterialPageRoute(builder: (_) => ProgressScreen());
      case "/content":
        return MaterialPageRoute(builder: (_) => ContentScreen());
      case "/askquestion":
        return MaterialPageRoute(builder: (_) => AskQuestionScreen());
      case "/askcontent":
        return MaterialPageRoute(builder: (_) => AskContentScreen());
      default:
        return MaterialPageRoute(builder: (_){
          return Scaffold(
            appBar: AppBar(
              title: Text("Tela não encontrada"),
            ),
            body: Center(
              child: Text("Tela não encontrada!"),
            ),
          );
        }
        );
    }
  }
}