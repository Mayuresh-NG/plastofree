import 'package:flutter/material.dart';
import 'package:plastofree/constant/globalvariables.dart';
import 'package:plastofree/router.dart';


import 'features/auth/screens/auth_screen.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'plastofree app',
      theme: ThemeData(
        scaffoldBackgroundColor: globalvariables.backgroundColor,
          colorScheme: const ColorScheme.light(
            primary: globalvariables.secondaryColor
          ),
          appBarTheme: const AppBarTheme(
          elevation: 0,
          color: globalvariables.secondaryColor,
          iconTheme: IconThemeData(
            color: Colors.black
          )
        )
      ),
      onGenerateRoute: (settings) => generateRoute(settings),
      home: const AuthScreen(),
    );
  }
}

