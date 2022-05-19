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
      initialRoute: "ware_edit",
      routes: {
        "ware_edit": (context)=> const WareEdit(),
      },
//      home: const WareEdit(),
    );
  }

//  List<Map<String, dynamic>> _checkList = [];
//  _showDialogWareType(BuildContext context) {
//    showDialog(
//        context: context,
//        barrierDismissible: false,
//        builder: (BuildContext context) {
//          return TreeWareTypeDialog(isType:"0", businessType:"0",checkData: _checkList, okCallBack: (value){
//            _checkList = value;
//          });
//        }
//    );
//  }

}
