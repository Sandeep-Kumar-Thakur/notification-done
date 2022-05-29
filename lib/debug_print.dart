import 'package:flutter/material.dart';

void consolePrint({label, data}){
  debugPrint("${label.toString()} --->\n${data.toString()}");
}