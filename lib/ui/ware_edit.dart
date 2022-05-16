import 'package:flutter/material.dart';
import 'package:flutterqwb/utils/color_util.dart';

import '../utils/font_size_util.dart';

class WareEdit extends StatelessWidget {
  const WareEdit({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    ModalRoute.of(context)?.settings.arguments;

    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text("新建商品")),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(left: 10, right: 10),
        child: RaisedButton(
            onPressed: () {},
            child: const Text("保存"),
            textColor: Colors.white,
            color: Colors.blue),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 10, right: 10),
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: 40,
              child: Row(
                children: [
                  Text("商品总类:", style: TextStyle(color: ColorUtil.GRAY_6)),
                  Expanded(
                      child: GestureDetector(
                    onTap: () {},
                    child:
                        Text("库存商品类", style: TextStyle(color: ColorUtil.BLUE)),
                  )),
                  const Icon(Icons.arrow_drop_down)
                ],
              ),
            ),
            Divider(
              height: 1,
              color: ColorUtil.LINE_GRAY,
            ),
            SizedBox(
              height: 40,
              child: Row(
                children: [
                  Text("商品类别属性:", style: TextStyle(color: ColorUtil.GRAY_6)),
                  Radio(value: 0, groupValue: [0, 1], onChanged: (value){}),
                  Text("实物商品"),
                  Radio(value: 1, groupValue: [0, 1], onChanged: (value){}),
                  Text("服务商品"),
                  Text("注：服务商品，不走发货流程", style: TextStyle(color: ColorUtil.RED, fontSize: FontSizeUtil.TIP_RED),),
                ],
              ),
            ),
            Divider(
              height: 1,
              color: ColorUtil.LINE_GRAY,
            ),
            SizedBox(
              height: 40,
              child: Row(
                children: [
                  Text("商品类别:", style: TextStyle(color: ColorUtil.GRAY_6)),
                  Expanded(
                      child: GestureDetector(
                        onTap: () {},
                        child:
                        Text("未分类", style: TextStyle(color: ColorUtil.BLUE)),
                      )),
                  const Icon(Icons.arrow_drop_down)
                ],
              ),
            ),
            Divider(
              height: 1,
              color: ColorUtil.LINE_GRAY,
            ),
          ],
        ),
      ),
    );
  }
}
