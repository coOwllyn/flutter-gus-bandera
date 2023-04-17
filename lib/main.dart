import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../provider/choose_location_provider.dart';
import '../screens/slava_ukraine_screen.dart';
import '../screens/home_screen.dart';
import '../screens/choose_screen.dart';
import '../screens/load_screen.dart';
import '../provider/change_lang.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => ChooseLocation()),
      ChangeNotifierProvider(create: (_) => ChooseLanguage()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(primary: Colors.black),
      ),
      home: const LoadScreen(),
    );
  }
}
