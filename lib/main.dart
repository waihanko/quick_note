import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quicknote/screen_home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color(0xFF1D2733),
      statusBarBrightness: Brightness.light,
    ));
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: MaterialColor(0xFF1D2733, const <int, Color>{
            50: const Color(0xFFe0e0e0),
            100: const Color(0xFFb3b3b3),
            200: const Color(0xFF808080),
            300: const Color(0xFF4d4d4d),
            400: const Color(0xFF262626),
            500: const Color(0xFF1D2733),
            600: const Color(0xFF000000),
            700: const Color(0xFF000000),
            800: const Color(0xFF000000),
            900: const Color(0xFF000000)
          }),
          scaffoldBackgroundColor: Color(0xFF1D2733)),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
