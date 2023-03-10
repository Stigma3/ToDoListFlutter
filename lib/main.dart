import 'dart:ui';
import 'package:ToDo/firebase_options.dart';
import 'package:ToDo/model/passcodeModel.dart';
import 'package:ToDo/screens/onBoardingScreen.dart';
import 'package:ToDo/theme/customThemes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'model/toDoModel.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(ToDoApp());
}

class ToDoApp extends StatefulWidget {
    @override
      _ToDoAppState createState() => _ToDoAppState();

    // for theme
    static _ToDoAppState? of(BuildContext context) => context.findAncestorStateOfType<_ToDoAppState>();
}

class _ToDoAppState extends State<ToDoApp>{
  ThemeMode _themeMode = ThemeMode.light;

  void changeTheme(ThemeMode themeMode) {
    setState(() {
      _themeMode = themeMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: _themeMode,
      scrollBehavior: AppScrollBehavior(),
      home: //BlocProvider(create: (context) => Bloc()),
      OnBoardingScreen(),
    );
  }
}

class AppScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
  };

}