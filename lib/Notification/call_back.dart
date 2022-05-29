import 'package:flutter/material.dart';
import 'package:notification/debug_print.dart';

class CallBackClass extends StatelessWidget {
   Function(String name)callBackFunction;
   CallBackClass({Key? key,required this.callBackFunction}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:(){
        callBackFunction("ravi");
        },

      child: Text("pressed"),
    );
  }
}
