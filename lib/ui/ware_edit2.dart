import 'package:flutter/material.dart';

class WareEdit2 extends StatelessWidget {
  const WareEdit2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    ModalRoute.of(context)?.settings.arguments;

    return Scaffold(
      appBar: AppBar(
          leading: IconButton(icon:const Icon(Icons.arrow_back_ios), onPressed: () { Navigator.pop(context); },),
          title: const Text("编辑商品")
      ),
      body: Container(
        margin:const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          children: [
            Container(
              height: 40,
              alignment: Alignment.center,
              child: TextButton(onPressed: (){}, child: const Text("商品基础信息▼")),
            ),
            SizedBox(
              child: Row(
                children: const [
                  Text("商品名称:"),
                  Expanded(child: TextField(decoration:InputDecoration(
                    hintText: "请输入商品名称",
                    hintStyle: TextStyle(color: Color(0xFF999999), fontSize: 13),
                    border: OutlineInputBorder(borderSide: BorderSide.none)
                  ))),
                ],
              ),
            ),
            const Divider(height: 1, color: Color(0xffeeeeee)),
            SizedBox(
              child: Row(
                children: [
                  Expanded(child: Row(
                    children: const [
                      Text("单位(大):"),
                      Expanded(child: TextField(
                        decoration: InputDecoration(
                          hintText: "如箱",
                          hintStyle: TextStyle(color: Color(0xFF999999), fontSize: 12),
                          border: OutlineInputBorder(borderSide: BorderSide.none),
                        ),
                      )),
                    ],
                  )),
                  Expanded(child: Row(
                    children: const [
                      Text("单位(小):"),
                      Expanded(child: TextField(
                        decoration: InputDecoration(
                          hintText: "如瓶",
                          hintStyle: TextStyle(color: Color(0xFf999999), fontSize: 12),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none
                          ),
                        ),
                      ))
                    ],
                  ))
                ],
              ),
            ),
            const Divider(height: 1, color: Color(0xffeeeeee) ),
            SizedBox(
              child: Row(
                children: [
                  Expanded(child: Row(
                    children: const [
                      Text("规格(大):", style: TextStyle(color: Color(0xFF666666), fontSize: 13),),
                      Expanded(child: TextField(
                        decoration: InputDecoration(
                            hintText: "如500ml*6",
                            hintStyle: TextStyle(color: Color(0xff999999), fontSize: 13),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none
                            )
                        ),
                      ))
                    ],
                  )),
                  Expanded(child: Row(
                    children: const [
                      Text("规格(小):", style: TextStyle(color: Color(0xff666666), fontSize: 13),),
                      Expanded(child: TextField(
                        decoration: InputDecoration(
                          hintText: "如500ml",
                          hintStyle: TextStyle(color: Color(0xff999999), fontSize: 13),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none
                          )
                        ),
                      ))
                    ],
                  ))
                ],
              ),
            ),
            const Divider(height: 1, color: Color(0xffeeeeee),)
          ],
        ),
      ),
    );
  }
}
