import 'package:flutter/material.dart';

import 'package:plastofree/constant/GlobalVariables.dart';
import 'package:plastofree/features/auth/services/authservice.dart';
import 'package:plastofree/providers/user_provider.dart';
import 'package:plastofree/router.dart';
import 'package:plastofree/widgets/bottom_bar.dart';
import 'package:provider/provider.dart';
import 'features/auth/screens/auth_screen.dart';

void main(){
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => UserProvider())

  ],child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AuthService authService = AuthService();

  @override
  void initState() {
    super.initState();
    authService.getUserData(context);
  }

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
      home: Provider.of<UserProvider>(context).user.token.isNotEmpty
          ? const BottomBar()
          : const AuthScreen(),
    );
  }
}

