import 'package:flutter/material.dart';
import 'package:flutterqwb/tree/dialog/tree_ware_type_dialog.dart';
import 'package:flutterqwb/utils/color_util.dart';
import 'package:flutterqwb/utils/font_size_util.dart';

class WareEdit extends StatefulWidget {

  const WareEdit({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return WareEditState();
  }
}

class WareEditState extends State<WareEdit>{
  @override
  Widget build(BuildContext context) {
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
            onPressed: _save,
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
                        onTap: (){
                          _showDialogWareIsType(context);
                        },
                        child:
                        Text(_isTypeText, style: TextStyle(color: ColorUtil.BLUE)),
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
                  Radio(value: "0", groupValue: _businessType, onChanged: (value)=> _changeRadioValue(value)),
//                  Radio(value: "0", groupValue: _businessType, onChanged: null),
                  Text("实物商品", style: TextStyle(color: ColorUtil.GRAY_6, fontSize: FontSizeUtil.MIDDLE)),
                  Radio(value: "1", groupValue: _businessType, onChanged: (value)=>_changeRadioValue(value)),
                  Text("服务商品", style: TextStyle(color: ColorUtil.GRAY_6, fontSize: FontSizeUtil.MIDDLE)),
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
                        onTap: () {
                          _showDialogWareType(context);
                        },
                        child:
                        Text(_wareTypeText, style: TextStyle(color: ColorUtil.BLUE)),
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
                children: [
                  Text("商品名称:", style: TextStyle(color: ColorUtil.GRAY_6, fontSize: FontSizeUtil.MIDDLE),),
                  Expanded(child: TextField(
                    controller: _wareNameController,
                      decoration:const InputDecoration(
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
                    children: [
                      Text("单位(大):", style: TextStyle(color: ColorUtil.GRAY_6, fontSize: FontSizeUtil.MIDDLE)),
                      Expanded(child: TextField(
                        controller: _maxUnitController,
                        decoration: const InputDecoration(
                          hintText: "如箱",
                          hintStyle: TextStyle(color: Color(0xFF999999), fontSize: 12),
                          border: OutlineInputBorder(borderSide: BorderSide.none),
                        ),
                      )),
                    ],
                  )),
                  Expanded(child: Row(
                    children: [
                      Text("单位(小):", style: TextStyle(color: ColorUtil.GRAY_6, fontSize: FontSizeUtil.MIDDLE)),
                      Expanded(child: TextField(
                        controller: _minUnitController,
                        decoration: const InputDecoration(
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
                    children: [
                      Text("规格(大):", style: TextStyle(color: ColorUtil.GRAY_6, fontSize: FontSizeUtil.MIDDLE),),
                      Expanded(child: TextField(
                        controller: _maxWareGgUnitController,
                        decoration: const InputDecoration(
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
                    children: [
                      Text("规格(小):", style: TextStyle(color: ColorUtil.GRAY_6, fontSize: FontSizeUtil.MIDDLE),),
                      Expanded(child: TextField(
                        controller: _minWareGgUnitController,
                        decoration: const InputDecoration(
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
                        controller: _maxBarCodeController,
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
                        controller: _minBarCodeController,
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
                    controller: _sUnitController,
                    decoration: InputDecoration(
                        hintText: "点击输入",
                        hintStyle: TextStyle(color: ColorUtil.GRAY_9, fontSize: FontSizeUtil.MIDDLE),
                        border:  const OutlineInputBorder(
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
                      SizedBox(width:40,child: TextButton(onPressed: (){
                        _showDialogLetter(context, true);
                      }, child: Text(_maxLetterSort.isNotEmpty?_maxLetterSort:"选择", style: TextStyle(color: ColorUtil.BLUE, fontSize: FontSizeUtil.MIDDLE))),),
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
                      SizedBox(width:40,child: TextButton(onPressed: (){
                        _showDialogLetter(context, false);
                        }, child: Text(_minLetterSort.isNotEmpty?_minLetterSort:"选择", style: TextStyle(color: ColorUtil.BLUE, fontSize: FontSizeUtil.MIDDLE))),),
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

  String _businessType = "0";
  String _isType = "0";
  String _isTypeText = "库存商品类";
  String _wareType = "";
  String _wareTypeText = "未分类";
  String _maxLetterSort = "";
  String _minLetterSort = "";
  TextEditingController _wareNameController = TextEditingController(text: "青岛打油");
  TextEditingController _maxUnitController = TextEditingController();
  TextEditingController _minUnitController = TextEditingController();
  TextEditingController _maxWareGgUnitController = TextEditingController();
  TextEditingController _minWareGgUnitController = TextEditingController();
  TextEditingController _maxBarCodeController = TextEditingController();
  TextEditingController _minBarCodeController = TextEditingController();
  TextEditingController _sUnitController = TextEditingController();
  TextEditingController _maxSortController = TextEditingController();
  TextEditingController _minSortController = TextEditingController();
  TextEditingController _wareTypeSortController = TextEditingController();
  TextEditingController _maxLsPriceController = TextEditingController();
  TextEditingController _minLsPriceController = TextEditingController();
  TextEditingController _maxInPriceController = TextEditingController();
  TextEditingController _minInPriceController = TextEditingController();
  TextEditingController _maxPfPriceController = TextEditingController();
  TextEditingController _minPfPriceController = TextEditingController();
  TextEditingController _innerAccPriceDefaultController = TextEditingController();
  TextEditingController _lowestSalePriceController = TextEditingController();
  TextEditingController _wareFeaturesController = TextEditingController();

  void _showDialogWareIsType(BuildContext context){
    showDialog(
      context: context,
      builder: (_)=> SimpleDialog(
        title: Text("选择商品总类", style: TextStyle(color: ColorUtil.BLUE, fontSize: FontSizeUtil.BIG)),
        children: [
          SimpleDialogOption(
            child: const Text("库存商品类"),
            onPressed: (){
              _changeWareIsType("0", "库存商品类");
            },
          ),
          SimpleDialogOption(
            child: const Text("原辅材料类"),
            onPressed: (){
              _changeWareIsType("1", "原辅材料类");
            },
          ),
          SimpleDialogOption(
            child: const Text("低值易耗品类"),
            onPressed: (){
              _changeWareIsType("2", "低值易耗品类");
            },
          ),
          SimpleDialogOption(
            child: const Text("固定资产类"),
            onPressed: (){
              _changeWareIsType("3", "固定资产类");
            },
          ),
          SimpleDialogOption(
            child: const Text("联盟商品类"),
            onPressed: (){
              _changeWareIsType("4", "联盟商品类");
            },
          ),
        ],
      )
    );
  }

  void _changeWareIsType(value, text){
    Navigator.pop(context);
    setState(() {
      _isType = value;
      _isTypeText = text;
      _wareType = "";
      _wareTypeText = "";
    });
  }

  List<Map<String, dynamic>> _checkList = [];
  _showDialogWareType(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return TreeWareTypeDialog(isType:_isType, businessType: _businessType,checkData: _checkList, okCallBack: (value){
            _checkList = value;
            if(_checkList.isNotEmpty){
              setState(() {
                _wareType = _checkList[0]["waretypeId"].toString();
                _wareTypeText = _checkList[0]["waretypeNm"];
              });
            }
          });
        }
    );
  }

  void _showDialogLetter(BuildContext context, bool isMax){
    showDialog(
        context: context,
        builder: (_)=> SimpleDialog(
          title: Text("选择排序编码", style: TextStyle(color: ColorUtil.BLUE, fontSize: FontSizeUtil.BIG)),
          children: getLetterList(isMax),
        )
    );
  }

  List<Widget> getLetterList(bool isMax){
    List<Widget> list = [];
    List<String> letterList = ["A", "B","C", "D","E", "F","G", "H","L", "K","M", "N","O", "P","Q", "R","S", "T","U", "V","W", "X","Y", "Z",];
    letterList.forEach((item) {
      list.add(SimpleDialogOption(
        child: Text(item),
        onPressed: (){
          _changeLetter(item, isMax);
        },
      ));
    });
    return list;
  }



  void _changeLetter(value, isMax){
    Navigator.pop(context);
    setState(() {
      if(isMax){
        _maxLetterSort = value;
        if(_minLetterSort.isEmpty){
          _minLetterSort = value;
        }
      }else{
        _minLetterSort = value;
        if(_maxLetterSort.isEmpty){
          _maxLetterSort = value;
        }
      }
    });
  }

  void _changeRadioValue(value){
    setState(() {
      _businessType = value;
    });
  }

  void _save(){
    String wareName = _wareNameController.text;
    String maxUnit = _maxUnitController.text;
    String minUnit = _minUnitController.text;
    String maxWareGg = _maxWareGgUnitController.text;
    String minWareGg = _minWareGgUnitController.text;
    String maxBarCode = _maxBarCodeController.text;
    String minBarCode = _minBarCodeController.text;
    String sUnit = _sUnitController.text;
  }

}
