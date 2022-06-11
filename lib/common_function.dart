import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:developer';

import 'package:get/get.dart';


showToast({required String message}){
  //Fluttertoast.showToast(msg: message);
}

myLog({String? label,String? data}){
  if(data==null){
    log(label!+" label");

  }else{
    log(label!+"---"+data);
  }
}

showLoader(){
  Get.dialog(Center(
    child: CircularProgressIndicator(),
  ));
}

hideLoader(){
  Get.back();
}

