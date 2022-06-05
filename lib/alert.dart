import 'package:flutter/material.dart';
import 'package:notification/interface.dart';

import 'debug_print.dart';

class AlertDialogCustom extends StatefulWidget {
  Interface interface;

  AlertDialogCustom({Key? key,required this.interface}) : super(key: key);
  @override
  State<AlertDialogCustom> createState() => _AlertDialogCustomState();
}

class _AlertDialogCustomState extends State<AlertDialogCustom>{
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
                onTap:() {
                  widget.interface.yesFunction();
                  consolePrint(label: "yes");
                  Navigator.pop(context);

                },
                child: Text("Yes")),
            InkWell(
                onTap:() {
                  widget.interface.noFunction();
                  consolePrint(label: "no");
                  Navigator.pop(context);

                },
                child: Text("No"))
          ],
        ),
      ),
    );
  }




}
