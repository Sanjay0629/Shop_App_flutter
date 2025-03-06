import 'package:flutter/material.dart';

import 'package:shop_app_flutter/shop_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Shop APP",
      theme: ThemeData(
        fontFamily: "Lato",
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromRGBO(254, 206, 1, 1),
          primary: Color.fromRGBO(254, 206, 1, 1),
        ),
        appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(fontSize: 20, color: Colors.black),
        ),
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          prefixIconColor: Color.fromRGBO(119, 119, 119, 1),
        ),
        textTheme: const TextTheme(
          titleMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          bodySmall: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          titleLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
        ),
        useMaterial3: true,
      ),

      debugShowCheckedModeBanner: false,
      home: ShopPage(),
    );
  }
}
