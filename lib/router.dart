import 'package:fitness_gymapp/pages/root_app.dart';
// import 'package:fitness_gymapp/pages/today_target_detail_page.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings setting) {
  final Map<String, dynamic> args = new Map<String, dynamic>();

  switch (setting.name) {
    case '/root_app':
      return MaterialPageRoute(builder: (context) => RootApp());
    // case '/today_target_detail':
    //   return MaterialPageRoute(builder: (context) => TodayTargetDetailPage());
    // case '/bmi':
    //   return MaterialPageRoute(builder: (context) => TodayTargetDetailPage());
    default:
      return MaterialPageRoute(
          builder: (context) => Scaffold(
                body: Center(),
              ));
  }
}
