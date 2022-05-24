import 'package:flutterqwb/model/ware/ware_pic.dart';

class WareResult {
  bool? state;
  SysWare? sysWare;

  WareResult({this.state, this.sysWare});

  WareResult.fromJson(Map<String, dynamic> json) {
    state = json['state'];
    sysWare =
    json['sysWare'] != null ? new SysWare.fromJson(json['sysWare']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['state'] = this.state;
    if (this.sysWare != null) {
      data['sysWare'] = this.sysWare!.toJson();
    }
    return data;
  }
}

class SysWare {
  int? wareId;
  String? wareNm;
  int? waretype;
  String? minUnitCode;
  String? maxUnitCode;
  String? packBarCode;
  String? beBarCode;
  String? wareDw;
  String? minUnit;
  String? wareGg;
  String? minWareGg;
  int? wareDj;
  int? sunitPrice;
  int? lsPrice;
  int? minLsPrice;
  int? inPrice;
  int? minInPrice;
  String? status;
  String? wareFeatures;
  int? businessType;
  double? sort;
  double? minSort;
  int? waretypeSort;
  int? bUnit;
  int? sUnit;
  int? hsNum;
  String? wareCode;
  String? py;
  String? waretypePath;
  int? isType;
  int? noCompany;
  String? unitName;
  int? brandId;
  int? salePrice;
  String? maxUnit;
  int? autoInQty;
  String? minUnitName;
  int? minSalePrice;
  int? supId;
  String? supName;
  int? supType;
  String? posWareNm;
  bool? hasSync;
  String? wareResume;
  String? wareDesc;
  String? shopWareAlias;
  int? shopWarePriceShow;
  int? shopWareSmallPriceShow;
  int? putOn;
  String? tags;
  String? attribute;
  String? platshopWareNm;
  String? platshopWareType;
  String? maxWeight;
  String? minWeight;
  double? maxVolume;
  double? minVolume;
  String? regName;
  String? regNo;
  String? providerName;
  String? aliasName;
  String? asnNo;
  String? qualityDays;
  String? activeDate;
  int? qualityAlert;
  int? tranAmt;
  int? tcAmt;
  int? isCy;
  int? sunitFront;
  int? inDefaultUnit;
  String? produceDate;
  String? remark;
  String? sortCode;
  String? minSortCode;
  String? fbtime;
  String? groupIds;
  String? groupNms;
  bool? lockImport;
  int? innerAccPriceDefault;
  String? queryInWaretypes;
  String? sourceCompanyName;
  bool? repeatBarCodeTag;
  int? isShop;
  int? createId;
  int? createMemId;
  int? createTime;
  String? createName;
  int? modifyId;
  String? modifyName;
  int? modifyTime;
  int? wareFlag;
  String? waretypeNm;
  String? groupName;
  String? brandNm;
  List<WarePic>? warePicList;

  SysWare(
      {this.wareId,
        this.wareNm,
        this.waretype,
        this.minUnitCode,
        this.maxUnitCode,
        this.packBarCode,
        this.beBarCode,
        this.wareDw,
        this.minUnit,
        this.wareGg,
        this.minWareGg,
        this.wareDj,
        this.sunitPrice,
        this.lsPrice,
        this.minLsPrice,
        this.inPrice,
        this.minInPrice,
        this.status,
        this.wareFeatures,
        this.businessType,
        this.sort,
        this.minSort,
        this.waretypeSort,
        this.bUnit,
        this.sUnit,
        this.hsNum,
        this.wareCode,
        this.py,
        this.waretypePath,
        this.isType,
        this.noCompany,
        this.unitName,
        this.brandId,
        this.salePrice,
        this.maxUnit,
        this.autoInQty,
        this.minUnitName,
        this.minSalePrice,
        this.supId,
        this.supName,
        this.supType,
        this.posWareNm,
        this.hasSync,
        this.wareResume,
        this.wareDesc,
        this.shopWareAlias,
        this.shopWarePriceShow,
        this.shopWareSmallPriceShow,
        this.putOn,
        this.tags,
        this.attribute,
        this.platshopWareNm,
        this.platshopWareType,
        this.maxWeight,
        this.minWeight,
        this.maxVolume,
        this.minVolume,
        this.regName,
        this.regNo,
        this.providerName,
        this.aliasName,
        this.asnNo,
        this.qualityDays,
        this.activeDate,
        this.qualityAlert,
        this.tranAmt,
        this.tcAmt,
        this.isCy,
        this.sunitFront,
        this.inDefaultUnit,
        this.produceDate,
        this.remark,
        this.sortCode,
        this.minSortCode,
        this.fbtime,
        this.groupIds,
        this.groupNms,
        this.lockImport,
        this.innerAccPriceDefault,
        this.queryInWaretypes,
        this.sourceCompanyName,
        this.repeatBarCodeTag,
        this.isShop,
        this.createId,
        this.createMemId,
        this.createTime,
        this.createName,
        this.modifyId,
        this.modifyName,
        this.modifyTime,
        this.wareFlag,
        this.waretypeNm,
        this.groupName,
        this.brandNm,
        this.warePicList});

  SysWare.fromJson(Map<String, dynamic> json) {
    wareId = json['wareId'];
    wareNm = json['wareNm'];
    waretype = json['waretype'];
    minUnitCode = json['minUnitCode'];
    maxUnitCode = json['maxUnitCode'];
    packBarCode = json['packBarCode'];
    beBarCode = json['beBarCode'];
    wareDw = json['wareDw'];
    minUnit = json['minUnit'];
    wareGg = json['wareGg'];
    minWareGg = json['minWareGg'];
    wareDj = json['wareDj'];
    sunitPrice = json['sunitPrice'];
    lsPrice = json['lsPrice'];
    minLsPrice = json['minLsPrice'];
    inPrice = json['inPrice'];
    minInPrice = json['minInPrice'];
    status = json['status'];
    wareFeatures = json['wareFeatures'];
    businessType = json['businessType'];
    sort = json['sort'];
    minSort = json['minSort'];
    waretypeSort = json['waretypeSort'];
    bUnit = json['bUnit'];
    sUnit = json['sUnit'];
    hsNum = json['hsNum'];
    wareCode = json['wareCode'];
    py = json['py'];
    waretypePath = json['waretypePath'];
    isType = json['isType'];
    noCompany = json['noCompany'];
    unitName = json['unitName'];
    brandId = json['brandId'];
    salePrice = json['salePrice'];
    maxUnit = json['maxUnit'];
    autoInQty = json['autoInQty'];
    minUnitName = json['minUnitName'];
    minSalePrice = json['minSalePrice'];
    supId = json['supId'];
    supName = json['supName'];
    supType = json['supType'];
    posWareNm = json['posWareNm'];
    hasSync = json['hasSync'];
    wareResume = json['wareResume'];
    wareDesc = json['wareDesc'];
    shopWareAlias = json['shopWareAlias'];
    shopWarePriceShow = json['shopWarePriceShow'];
    shopWareSmallPriceShow = json['shopWareSmallPriceShow'];
    putOn = json['putOn'];
    tags = json['tags'];
    attribute = json['attribute'];
    platshopWareNm = json['platshopWareNm'];
    platshopWareType = json['platshopWareType'];
    maxWeight = json['maxWeight'];
    minWeight = json['minWeight'];
    maxVolume = json['maxVolume'];
    minVolume = json['minVolume'];
    regName = json['regName'];
    regNo = json['regNo'];
    providerName = json['providerName'];
    aliasName = json['aliasName'];
    asnNo = json['asnNo'];
    qualityDays = json['qualityDays'];
    activeDate = json['activeDate'];
    qualityAlert = json['qualityAlert'];
    tranAmt = json['tranAmt'];
    tcAmt = json['tcAmt'];
    isCy = json['isCy'];
    sunitFront = json['sunitFront'];
    inDefaultUnit = json['inDefaultUnit'];
    produceDate = json['produceDate'];
    remark = json['remark'];
    sortCode = json['sortCode'];
    minSortCode = json['minSortCode'];
    fbtime = json['fbtime'];
    groupIds = json['groupIds'];
    groupNms = json['groupNms'];
    lockImport = json['lockImport'];
    innerAccPriceDefault = json['innerAccPriceDefault'];
    queryInWaretypes = json['queryInWaretypes'];
    sourceCompanyName = json['sourceCompanyName'];
    repeatBarCodeTag = json['repeatBarCodeTag'];
    isShop = json['isShop'];
    createId = json['createId'];
    createMemId = json['createMemId'];
    createTime = json['createTime'];
    createName = json['createName'];
    modifyId = json['modifyId'];
    modifyName = json['modifyName'];
    modifyTime = json['modifyTime'];
    wareFlag = json['wareFlag'];
    waretypeNm = json['waretypeNm'];
    groupName = json['groupName'];
    brandNm = json['brandNm'];
    if (json['warePicList'] != null) {
      warePicList = [];
      json['warePicList'].forEach((v) {
        warePicList!.add(new WarePic.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['wareId'] = this.wareId;
    data['wareNm'] = this.wareNm;
    data['waretype'] = this.waretype;
    data['minUnitCode'] = this.minUnitCode;
    data['maxUnitCode'] = this.maxUnitCode;
    data['packBarCode'] = this.packBarCode;
    data['beBarCode'] = this.beBarCode;
    data['wareDw'] = this.wareDw;
    data['minUnit'] = this.minUnit;
    data['wareGg'] = this.wareGg;
    data['minWareGg'] = this.minWareGg;
    data['wareDj'] = this.wareDj;
    data['sunitPrice'] = this.sunitPrice;
    data['lsPrice'] = this.lsPrice;
    data['minLsPrice'] = this.minLsPrice;
    data['inPrice'] = this.inPrice;
    data['minInPrice'] = this.minInPrice;
    data['status'] = this.status;
    data['wareFeatures'] = this.wareFeatures;
    data['businessType'] = this.businessType;
    data['sort'] = this.sort;
    data['minSort'] = this.minSort;
    data['waretypeSort'] = this.waretypeSort;
    data['bUnit'] = this.bUnit;
    data['sUnit'] = this.sUnit;
    data['hsNum'] = this.hsNum;
    data['wareCode'] = this.wareCode;
    data['py'] = this.py;
    data['waretypePath'] = this.waretypePath;
    data['isType'] = this.isType;
    data['noCompany'] = this.noCompany;
    data['unitName'] = this.unitName;
    data['brandId'] = this.brandId;
    data['salePrice'] = this.salePrice;
    data['maxUnit'] = this.maxUnit;
    data['autoInQty'] = this.autoInQty;
    data['minUnitName'] = this.minUnitName;
    data['minSalePrice'] = this.minSalePrice;
    data['supId'] = this.supId;
    data['supName'] = this.supName;
    data['supType'] = this.supType;
    data['posWareNm'] = this.posWareNm;
    data['hasSync'] = this.hasSync;
    data['wareResume'] = this.wareResume;
    data['wareDesc'] = this.wareDesc;
    data['shopWareAlias'] = this.shopWareAlias;
    data['shopWarePriceShow'] = this.shopWarePriceShow;
    data['shopWareSmallPriceShow'] = this.shopWareSmallPriceShow;
    data['putOn'] = this.putOn;
    data['tags'] = this.tags;
    data['attribute'] = this.attribute;
    data['platshopWareNm'] = this.platshopWareNm;
    data['platshopWareType'] = this.platshopWareType;
    data['maxWeight'] = this.maxWeight;
    data['minWeight'] = this.minWeight;
    data['maxVolume'] = this.maxVolume;
    data['minVolume'] = this.minVolume;
    data['regName'] = this.regName;
    data['regNo'] = this.regNo;
    data['providerName'] = this.providerName;
    data['aliasName'] = this.aliasName;
    data['asnNo'] = this.asnNo;
    data['qualityDays'] = this.qualityDays;
    data['activeDate'] = this.activeDate;
    data['qualityAlert'] = this.qualityAlert;
    data['tranAmt'] = this.tranAmt;
    data['tcAmt'] = this.tcAmt;
    data['isCy'] = this.isCy;
    data['sunitFront'] = this.sunitFront;
    data['inDefaultUnit'] = this.inDefaultUnit;
    data['produceDate'] = this.produceDate;
    data['remark'] = this.remark;
    data['sortCode'] = this.sortCode;
    data['minSortCode'] = this.minSortCode;
    data['fbtime'] = this.fbtime;
    data['groupIds'] = this.groupIds;
    data['groupNms'] = this.groupNms;
    data['lockImport'] = this.lockImport;
    data['innerAccPriceDefault'] = this.innerAccPriceDefault;
    data['queryInWaretypes'] = this.queryInWaretypes;
    data['sourceCompanyName'] = this.sourceCompanyName;
    data['repeatBarCodeTag'] = this.repeatBarCodeTag;
    data['isShop'] = this.isShop;
    data['createId'] = this.createId;
    data['createMemId'] = this.createMemId;
    data['createTime'] = this.createTime;
    data['createName'] = this.createName;
    data['modifyId'] = this.modifyId;
    data['modifyName'] = this.modifyName;
    data['modifyTime'] = this.modifyTime;
    data['wareFlag'] = this.wareFlag;
    data['waretypeNm'] = this.waretypeNm;
    data['groupName'] = this.groupName;
    data['brandNm'] = this.brandNm;
    if (this.warePicList != null) {
      data['warePicList'] = this.warePicList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

