// import 'dart:io';
//
// import 'package:fluttertoast/fluttertoast.dart';
//
// bool network= false;
//
// Future<bool> checkNetwork() async {
//   if(check()==false){
//     return false;
//   }else{
//     return true;
//   }
// }
//
// Future<bool> check() async {
//   try {
//     final result = await InternetAddress.lookup('example.com');
//     if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
//       print('connected');
//       network= true;
//     }
//   } on SocketException catch (_) {
//     print('not connected');
//     Fluttertoast.showToast(msg: 'Please check your network connection');
//     network= false;
//   }
// }
//
