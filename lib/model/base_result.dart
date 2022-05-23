import 'dart:ui';

import 'package:flutter/material.dart';

class BaseResult{
  int? code;
  String? message;
  bool? state;
  bool? success;
  String? msg;

  BaseResult(
      {this.code, this.message, this.state, this.success, this.msg});

  BaseResult.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    state = json['state'];
    success = json['success'];
    msg = json['msg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['message'] = this.message;
    data['state'] = this.state;
    data['success'] = this.success;
    data['msg'] = this.msg;
    return data;
  }
}