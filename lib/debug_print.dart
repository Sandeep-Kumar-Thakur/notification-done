import 'package:flutter/material.dart';

void consolePrint({label, data}){
  if(data!=null) {
    debugPrint("${label.toString()} --->\n${data.toString()}");
  } else {
    debugPrint("--->${label.toString()}");
  }

}