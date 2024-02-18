import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'DoubleColumnFixed.dart';
import 'main_menu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
            titleTextStyle: GoogleFonts.manrope(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold)),
        textTheme: GoogleFonts.manropeTextTheme(),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('DataTable Scroll'),
        ),
        body: Main_menu(),
      ),
    );
  }
}
