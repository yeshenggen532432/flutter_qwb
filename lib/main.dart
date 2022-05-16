import 'package:flutter/material.dart';
import 'package:flutterqwb/ui/ware_edit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
//      routes: {
//        "ware_edit": (context)=> const WareEdit(),
//      },
      home: const WareEdit(),
    );
  }
}
