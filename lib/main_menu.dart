import 'package:flutter/material.dart';
import 'package:list_view/DoubleColumnFixed.dart';
import 'package:list_view/singleColumnFixed.dart';

class Main_menu extends StatefulWidget {
  const Main_menu({super.key});

  @override
  State<Main_menu> createState() => _Main_menuState();
}

class _Main_menuState extends State<Main_menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => Single_Column()));
                },
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Icon(
                          Icons.view_column_outlined,
                          size: 80,
                          color: Colors.red,
                        ),
                        Text(
                          "Single Column",
                          style: TextStyle(fontSize: 18),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => Double_Column()));
                },
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Icon(
                          Icons.view_column,
                          size: 80,
                        ),
                        Text(
                          "Double Column",
                          style: TextStyle(fontSize: 18),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
