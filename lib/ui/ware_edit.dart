import 'package:flutter/material.dart';

class WareEdit extends StatelessWidget {
  const WareEdit({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    ModalRoute.of(context)?.settings.arguments;

    return Scaffold(
      appBar: AppBar(
          leading: IconButton(icon:const Icon(Icons.arrow_back_ios), onPressed: () { Navigator.pop(context); },),
          title: const Text("编辑商品")
      ),
    );
  }
}
