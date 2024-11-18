import 'package:flutter/material.dart';
import 'package:resposive_ui/Pages/mobile_table_desktop.dart';

import 'Pages/second_example.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Responsive Layout',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const ResponsiveLayout(),
      home:  const ResponsiveUiTwo(),
    );
  }
}
