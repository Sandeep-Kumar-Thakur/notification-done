import 'dart:developer';

import 'package:flutter/material.dart';

void consolePrint({label, data}){
  if(data!=null) {
    log("${label.toString()} --->\n${data.toString()}");
  } else {
    debugPrint("--->${label.toString()}");
  }

}