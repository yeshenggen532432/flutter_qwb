import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutterqwb/tree/tree.dart';
import 'package:flutterqwb/utils/color_util.dart';

class TreeWareTypeDialog extends Dialog {
  String isType;
  String businessType;
  List<Map<String, dynamic>> checkData;
  final Function okCallBack;        //右边回调
  TreeWareTypeDialog({Key? key, required this.checkData, required this.okCallBack, required this.isType, required this.businessType}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TreeWareTypeContent(checkData:checkData, okCallBack:okCallBack, isType: isType, businessType: businessType,);
  }
}

class TreeWareTypeContent extends StatefulWidget{
  String isType;
  String businessType;
  List<Map<String, dynamic>> checkData;
  final Function okCallBack;        //右边回调
  TreeWareTypeContent({Key? key, required this.checkData, required this.okCallBack, required this.isType, required this.businessType}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return TreeWareTypeState();
  }
}

class TreeWareTypeState extends State<TreeWareTypeContent>{
  List<Map<String, dynamic>> data = [];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    bool showKindType = true;
    bool showServiceType = false;
    if(widget.businessType=="1"){
      showKindType = false;
      showServiceType = true;
    }
    String token = "c71e7f9025a479a1a4bb5e4f5d256058";
    String url = "http://mp.qweib.com/web/basic/bas_ware_type/list_ware_type_group?token="+token.toString()+
        "&noCompany=0&showCarType=false&showOftenType=false&showFavType=false&showGroupType=false&showKindType="+showKindType.toString()+"&showServiceType="+showServiceType.toString()+
            "&businessType="+widget.businessType.toString()+"&isType="+widget.isType.toString();
    logger.d(url);
    var response = await Dio().get(url);

    setState(() {
      data.clear();
      json.decode(response.toString())['data'].forEach((item){
        item['waretypePid']=-1;
        item['waretypeId']=0;
        data.add(item);
        addData(item['typeList']);
      });
    });
  }

  void addData(var typeList){
    if(typeList != null){
      typeList.forEach((item){
        data.add(item);
        addData(item['typeList']);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> checkedList = widget.checkData;
    return Material(
      type: MaterialType.transparency,
      child: Center(
        child: Container(
          margin: const EdgeInsets.all(45),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          height: 420,
          child: Column(
            children: [
              Container(
                height: 40,
                alignment: Alignment.center,
                child: const Text("温馨提示"),
              ),
              Divider(
                height: 1,
                color: ColorUtil.LINE_GRAY,
              ),
              Expanded(
                  child: data.isNotEmpty
                      ? FlutterTreePro(
                    listData: data,
                    initialListData: widget.checkData,
                    single: true,
                    config: const Config(
                      parentId: 'waretypePid',
                      id: 'waretypeId',
                      dataType: DataType.DataList,
                      label: 'waretypeNm',
                    ),
                    onChecked: (List<Map<String, dynamic>> list) {
                      checkedList = list;
                    },
                  )
                      : const Center(child: Text("暂无数据"))),
              Divider(
                height: 1,
                color: ColorUtil.LINE_GRAY,
              ),
              Flex(
                direction: Axis.horizontal,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text("取消"),
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      widget.okCallBack(checkedList);
                    },
                    child: const Text( "确定", style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

}
