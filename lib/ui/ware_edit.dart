import 'package:flutter/material.dart';
import 'package:flutterqwb/utils/color_util.dart';
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
        child: ListView(
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
            const Divider(height: 1, color: Color(0xffeeeeee)),
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
            const Divider(height: 1, color: Color(0xffeeeeee)),
            SizedBox(
              child: Row(
                children: [
                  Expanded(child: Row(
                    children: [
                      Text("条码(大):", style: TextStyle(color: ColorUtil.GRAY_6, fontSize: FontSizeUtil.MIDDLE),),
                      Expanded(child: TextField(
                        decoration: InputDecoration(
                          hintText: "如(箱码)",
                          hintStyle: TextStyle(color: ColorUtil.GRAY_9, fontSize: FontSizeUtil.MIDDLE),
                          border: const OutlineInputBorder(
                            borderSide: BorderSide.none
                          )
                        ),
                      )),
                      IconButton(onPressed: (){}, icon: const Icon(Icons.scanner))
                    ],
                  )),
                  Expanded(child: Row(
                    children: [
                      Text("条码(小):", style: TextStyle(color: ColorUtil.GRAY_6, fontSize: FontSizeUtil.MIDDLE)),
                      Expanded(child: TextField(
                        decoration: InputDecoration(
                          hintText: "如(瓶码)",
                          hintStyle: TextStyle(color: ColorUtil.GRAY_9, fontSize: FontSizeUtil.MIDDLE),
                          border: const OutlineInputBorder(
                            borderSide: BorderSide.none
                          )
                        ),
                      )),
                      IconButton(onPressed: (){}, icon: const Icon(Icons.scanner))
                    ],
                  ))
                ],
              ),
            ),
            Divider(height: 1, color: ColorUtil.LINE_GRAY),
            SizedBox(
              child: Row(
                children: [
                  Text("大小单位换算比例:", style: TextStyle(color: ColorUtil.GRAY_6, fontSize: FontSizeUtil.MIDDLE)),
                  Text("1", style: TextStyle(color: ColorUtil.GRAY_3, fontSize: FontSizeUtil.BIG)),
                  Text("*大单位=", style: TextStyle(color: ColorUtil.GRAY_6, fontSize: FontSizeUtil.MIDDLE)),
                  Expanded(child: TextField(
                    decoration: InputDecoration(
                      hintText: "点击输入",
                      hintStyle: TextStyle(color: ColorUtil.GRAY_9, fontSize: FontSizeUtil.MIDDLE),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none
                      )
                    ),
                  )),
                  Text("*小单位", style: TextStyle(color: ColorUtil.GRAY_6, fontSize: FontSizeUtil.MIDDLE)),
                ],
              ),
            ),
            Container(
              height: 40,
              alignment: Alignment.center,
              child: TextButton( onPressed: (){}, child: Text("商品辅助信息1", style: TextStyle(color: ColorUtil.BLUE, fontSize: FontSizeUtil.BIG))),
            ),
            SizedBox(
              child: Row(
                children: [
                  Expanded(child: Row(
                    children: [
                      Text("总排序(大):", style: TextStyle(color: ColorUtil.GRAY_6, fontSize: FontSizeUtil.MIDDLE)),
                      SizedBox(width:40,child: TextButton(onPressed: (){}, child: Text("选择", style: TextStyle(color: ColorUtil.BLUE, fontSize: FontSizeUtil.MIDDLE))),),
                      Expanded(child: TextField(
                        decoration: InputDecoration(
                          hintText: "点击输入",
                          hintStyle: TextStyle(color: ColorUtil.GRAY_9, fontSize: FontSizeUtil.MIDDLE),
                          border: const OutlineInputBorder(
                            borderSide: BorderSide.none
                          )
                        ),
                      ))
                    ],
                  )),
                  Expanded(child: Row(
                    children: [
                      Text("总排序(小):", style: TextStyle(color: ColorUtil.GRAY_6, fontSize: FontSizeUtil.MIDDLE)),
                      SizedBox(width:40,child: TextButton(onPressed: (){}, child: Text("选择", style: TextStyle(color: ColorUtil.BLUE, fontSize: FontSizeUtil.MIDDLE))),),
                      Expanded(child: TextField(
                        decoration: InputDecoration(
                            hintText: "点击输入",
                            hintStyle: TextStyle(color: ColorUtil.GRAY_9, fontSize: FontSizeUtil.MIDDLE),
                            border: const OutlineInputBorder(
                                borderSide: BorderSide.none
                            )
                        ),
                      ))
                    ],
                  )),
                ],
              ),
            ),
            SizedBox(
              child: Row(
                children: [
                  Expanded(child: Row(
                    children: [
                      Text("分类排序:", style: TextStyle(color: ColorUtil.GRAY_6, fontSize: FontSizeUtil.MIDDLE)),
                      Expanded(child: TextField(
                        decoration: InputDecoration(
                            hintText: "点击输入",
                            hintStyle: TextStyle(color: ColorUtil.GRAY_9, fontSize: FontSizeUtil.MIDDLE),
                            border: const OutlineInputBorder(
                                borderSide: BorderSide.none
                            )
                        ),
                      ))
                    ],
                  ))
                ],
              ),
            ),
            Divider(height: 1, color: ColorUtil.LINE_GRAY),
            SizedBox(
              child: Row(
                children: [
                  Expanded(child: Row(
                    children: [
                      Text("原价(大):", style: TextStyle(color: ColorUtil.GRAY_6, fontSize: FontSizeUtil.MIDDLE)),
                      Expanded(child: TextField(
                        decoration: InputDecoration(
                            hintText: "点击输入",
                            hintStyle: TextStyle(color: ColorUtil.GRAY_9, fontSize: FontSizeUtil.MIDDLE),
                            border: const OutlineInputBorder(
                                borderSide: BorderSide.none
                            )
                        ),
                      ))
                    ],
                  )),
                  Expanded(child: Row(
                    children: [
                      Text("原价(小):", style: TextStyle(color: ColorUtil.GRAY_6, fontSize: FontSizeUtil.MIDDLE)),
                      Expanded(child: TextField(
                        decoration: InputDecoration(
                            hintText: "点击输入",
                            hintStyle: TextStyle(color: ColorUtil.GRAY_9, fontSize: FontSizeUtil.MIDDLE),
                            border: const OutlineInputBorder(
                                borderSide: BorderSide.none
                            )
                        ),
                      ))
                    ],
                  ))
                ],
              ),
            ),
            Divider(height: 1, color: ColorUtil.LINE_GRAY),
            SizedBox(
              child: Row(
                children: [
                  Expanded(child: Row(
                    children: [
                      Text("采购价(大):", style: TextStyle(color: ColorUtil.GRAY_6, fontSize: FontSizeUtil.MIDDLE)),
                      Expanded(child: TextField(
                        decoration: InputDecoration(
                            hintText: "点击输入",
                            hintStyle: TextStyle(color: ColorUtil.GRAY_9, fontSize: FontSizeUtil.MIDDLE),
                            border: const OutlineInputBorder(
                                borderSide: BorderSide.none
                            )
                        ),
                      ))
                    ],
                  )),
                  Expanded(child: Row(
                    children: [
                      Text("采购价(小):", style: TextStyle(color: ColorUtil.GRAY_6, fontSize: FontSizeUtil.MIDDLE)),
                      Expanded(child: TextField(
                        decoration: InputDecoration(
                            hintText: "点击输入",
                            hintStyle: TextStyle(color: ColorUtil.GRAY_9, fontSize: FontSizeUtil.MIDDLE),
                            border: const OutlineInputBorder(
                                borderSide: BorderSide.none
                            )
                        ),
                      ))
                    ],
                  ))
                ],
              ),
            ),
            Divider(height: 1, color: ColorUtil.LINE_GRAY),
            SizedBox(
              child: Row(
                children: [
                  Expanded(child: Row(
                    children: [
                      Text("批发价(大):", style: TextStyle(color: ColorUtil.GRAY_6, fontSize: FontSizeUtil.MIDDLE)),
                      Expanded(child: TextField(
                        decoration: InputDecoration(
                            hintText: "点击输入",
                            hintStyle: TextStyle(color: ColorUtil.GRAY_9, fontSize: FontSizeUtil.MIDDLE),
                            border: const OutlineInputBorder(
                                borderSide: BorderSide.none
                            )
                        ),
                      ))
                    ],
                  )),
                  Expanded(child: Row(
                    children: [
                      Text("批发价(小):", style: TextStyle(color: ColorUtil.GRAY_6, fontSize: FontSizeUtil.MIDDLE)),
                      Expanded(child: TextField(
                        decoration: InputDecoration(
                            hintText: "点击输入",
                            hintStyle: TextStyle(color: ColorUtil.GRAY_9, fontSize: FontSizeUtil.MIDDLE),
                            border: const OutlineInputBorder(
                                borderSide: BorderSide.none
                            )
                        ),
                      ))
                    ],
                  ))
                ],
              ),
            ),
            Divider(height: 1, color: ColorUtil.LINE_GRAY),
            SizedBox(
              child: Row(
                children: [
                  Expanded(child: Row(
                    children: [
                      Text("内部核算价(默认):", style: TextStyle(color: ColorUtil.GRAY_6, fontSize: FontSizeUtil.MIDDLE)),
                      Expanded(child: TextField(
                        decoration: InputDecoration(
                            hintText: "点击输入",
                            hintStyle: TextStyle(color: ColorUtil.GRAY_9, fontSize: FontSizeUtil.MIDDLE),
                            border: const OutlineInputBorder(
                                borderSide: BorderSide.none
                            )
                        ),
                      )),
                      Text("为空时默认采购价(大)", style: TextStyle(color: ColorUtil.RED, fontSize: FontSizeUtil.TIP_RED))
                    ],
                  ))
                ],
              ),
            ),
            Divider(height: 1, color: ColorUtil.LINE_GRAY),
            SizedBox(
              child: Row(
                children: [
                  Expanded(child: Row(
                    children: [
                      Text("最低销售价(大):", style: TextStyle(color: ColorUtil.GRAY_6, fontSize: FontSizeUtil.MIDDLE)),
                      Expanded(child: TextField(
                        decoration: InputDecoration(
                            hintText: "点击输入",
                            hintStyle: TextStyle(color: ColorUtil.GRAY_9, fontSize: FontSizeUtil.MIDDLE),
                            border: const OutlineInputBorder(
                                borderSide: BorderSide.none
                            )
                        ),
                      ))
                    ],
                  ))
                ],
              ),
            ),
            Divider(height: 1, color: ColorUtil.LINE_GRAY),
            SizedBox(
              child: Row(
                children: [
                  Expanded(child: Row(
                    children: [
                      Text("商品特征:", style: TextStyle(color: ColorUtil.GRAY_6, fontSize: FontSizeUtil.MIDDLE)),
                      Expanded(child: TextField(
                        decoration: InputDecoration(
                            hintText: "如：红色，白色，蓝色；(每组特征最多4个字)",
                            hintStyle: TextStyle(color: ColorUtil.GRAY_9, fontSize: FontSizeUtil.MIDDLE),
                            border: const OutlineInputBorder(
                                borderSide: BorderSide.none
                            )
                        ),
                      ))
                    ],
                  ))
                ],
              ),
            ),
            Divider(height: 1, color: ColorUtil.LINE_GRAY),
            Container(
              height: 40,
              alignment: Alignment.center,
              child: TextButton(onPressed: (){}, child: Text("商品辅助信息2", style: TextStyle(color: ColorUtil.BLUE, fontSize: FontSizeUtil.BIG))),
            ),
            SizedBox(
              child: Row(
                children: [
                  Expanded(child: Row(
                    children: [
                      Text("保质期:", style: TextStyle(color: ColorUtil.GRAY_6, fontSize: FontSizeUtil.MIDDLE)),
                      Expanded(child: TextField(
                        decoration: InputDecoration(
                          hintText: "点击输入",
                          hintStyle: TextStyle(color: ColorUtil.GRAY_9, fontSize: FontSizeUtil.MIDDLE),
                          border: const OutlineInputBorder(
                            borderSide: BorderSide.none
                          )
                        ),
                      )),
                      TextButton(onPressed: (){}, child: Text("天", style: TextStyle(color: ColorUtil.BLUE, fontSize: FontSizeUtil.MIDDLE),),)
                    ],
                  )),
                  Expanded(child: Row(
                    children: [
                      Text("保质期预警:", style: TextStyle(color: ColorUtil.GRAY_6, fontSize: FontSizeUtil.MIDDLE)),
                      Expanded(child: TextField(
                        decoration: InputDecoration(
                          hintText: "点击输入",
                          hintStyle: TextStyle(color: ColorUtil.GRAY_9, fontSize: FontSizeUtil.MIDDLE),
                          border: const OutlineInputBorder(
                            borderSide: BorderSide.none
                          )
                        ),
                      )),
                      Text("天",style: TextStyle(color: ColorUtil.GRAY_6, fontSize: FontSizeUtil.MIDDLE))
                    ],
                  ))
                ],
              ),
            ),
            Divider(height: 1, color: ColorUtil.LINE_GRAY),
            SizedBox(
              child: Row(
                children: [
                  Expanded(child: Row(
                    children: [
                      Text("供应商:", style: TextStyle(color: ColorUtil.GRAY_6, fontSize: FontSizeUtil.MIDDLE)),
                      TextButton(onPressed: (){}, child: Text("选择", style: TextStyle(color: ColorUtil.BLUE, fontSize: FontSizeUtil.MIDDLE)))
                    ],
                  )),
                  Expanded(child: Row(
                    children: [
                      Text("商品品牌:", style: TextStyle(color: ColorUtil.GRAY_6, fontSize: FontSizeUtil.MIDDLE)),
                      TextButton(onPressed: (){}, child: Text("选择", style: TextStyle(color: ColorUtil.BLUE, fontSize: FontSizeUtil.MIDDLE)))
                    ],
                  )),
                ],
              ),
            ),
            Divider(height: 1, color: ColorUtil.LINE_GRAY),
            SizedBox(
              child: Row(
                children: [
                  Expanded(child: Row(
                    children: [
                      Text("预警最低数量:", style: TextStyle(color: ColorUtil.GRAY_6, fontSize: FontSizeUtil.MIDDLE)),
                      Expanded(child: TextField(
                        decoration: InputDecoration(
                          hintText: "点击输入",
                          hintStyle: TextStyle(color: ColorUtil.GRAY_9, fontSize: FontSizeUtil.MIDDLE),
                          border: const OutlineInputBorder(borderSide: BorderSide.none)
                        ),
                      ))
                    ],
                  ))
                ],
              ),
            ),
            Divider(height: 1, color: ColorUtil.LINE_GRAY),
            Container(
              height: 40,
              alignment: Alignment.center,
              child: TextButton(onPressed: (){}, child: Text("查看客户类型价", style: TextStyle(color: ColorUtil.BLUE, fontSize: FontSizeUtil.BIG))),
            ),
          ],
        ),
      ),
    );
  }
}
