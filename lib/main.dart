import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:notification/Notification/call_back.dart';
import 'package:notification/alert.dart';
import 'package:notification/debug_print.dart';
import 'package:notification/interface.dart';

import 'Notification/notification.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  PushNotificationService().setupInteractedMessage();
  String? data = await FirebaseMessaging.instance.getToken();
  consolePrint(label: "token",data: data);
  runApp(const Myapp());
  RemoteMessage? initialMessage =
  await FirebaseMessaging.instance.getInitialMessage();
  if (initialMessage != null) {
    // App received a notification when it was killed
  }
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}


class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget implements Interface{
   MyHomePage({Key? key}) : super(key: key);
 late String name1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CallBackClass(
              callBackFunction: (String name) {
              name1 = name;
              consolePrint(label: "name",data:name1);
            },),
            SizedBox(
              height: 20,
            ),
            MaterialButton(onPressed: (){
              showDialog(context: context, builder: (context)=>AlertDialogCustom());
            },child: Text("GO"),)
          ],
        ),
      ),
    );
  }

  @override
  void noFunction() {
    consolePrint(label: "call override");
    // TODO: implement noFunction
  }

  @override
  void yesFunction() {
    consolePrint(label: "call override");

    // TODO: implement yesFunction
  }
}
