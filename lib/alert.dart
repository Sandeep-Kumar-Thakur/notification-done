import 'package:flutter/material.dart';
import 'package:notification/interface.dart';

import 'debug_print.dart';

class AlertDialogCustom extends StatefulWidget {
  const AlertDialogCustom({Key? key}) : super(key: key);

  @override
  State<AlertDialogCustom> createState() => _AlertDialogCustomState();
}

class _AlertDialogCustomState extends State<AlertDialogCustom> with Interface{
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
                onTap: yesFunction,
                child: Text("Yes")),
            InkWell(
                onTap:noFunction,
                child: Text("No"))
          ],
        ),
      ),
    );
  }




}
