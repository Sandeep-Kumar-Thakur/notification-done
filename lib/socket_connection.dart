// import 'dart:convert';
// import 'dart:developer';
//
// import 'package:bookys/common_model/chat_room_model.dart';
// import 'package:bookys/common_model/user_chat_list_model.dart';
// import 'package:bookys/views/employer/controller/UserInfoController.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:get/get.dart';
// import 'package:socket_io_client/socket_io_client.dart' as IO;
//
// class SocketConnectionMaker extends GetxController{
//   IO.Socket socket;
//   UserInfoController controller = Get.put(UserInfoController());
//   var model = ChatRoomModel().obs;obs
//   var chatListModel = UserChatListModel().obs;
//   var token;
//
//   Future getToken() async{
//     token = await FirebaseMessaging.instance.getToken();
//     log("here "+token.toString());
//   }
//
//   void initSocket({String roomId})async{
//     log("inti");
//     getToken();
//     log(roomId);
//     try {
//       socket = IO.io("http://192.168.1.67:6007", <String, dynamic>{
//         'transports': ['websocket'],
//       });
//       var id = await socket.connect().id;
//       log(socket.connected.toString());
//       log("id  "+id.toString());
//
//       // socket?.on('connect',(_){
//       //   log("socket connected user 1");
//       // });
//
//       socket?.emit('join', {
//         'name': controller.userProfileModel.value.data.extensionProfile.username,
//         "room": roomId,}
//       );
//
//       socket?.on("connected", (_) {
//         log("socket connected room "+roomId);
//         Fluttertoast.showToast(msg: "connected: "+roomId);
//       });
//
//       socket?.on("receiveMessage", (data) {
//         ChatsData _data = ChatsData.fromJson(data);
//         log("message received "+_data.toString());
//         if(_data!=null){
//           List<ChatsData> newList=[];
//           newList.add(_data);
//           newList.addAll( model.value.data.chatsData);
//           model.value.data.chatsData = newList;
//         }
//         log("screen controller "+model.value.data.chatsData.length.toString());
//         update();
//
//       });
//       socket?.on('connect_error', (e) {
//         print('connect_error user ${e.toString()}');
//       });
//     }catch(e){
//       log("Exception "+e.toString());
//     }
//   }
//
//   void updateList({ List<ChatsData> newList, int pageLength}){
//
//     model.value.data.chatsData.addAll(newList);
//     log("count final "+jsonEncode(model.value.data.chatsData).toString());
//     model.value.data.paginationDetails.totalPage=pageLength;
//     update();
//   }
//
//   Future send_message({String roomId,String toUser,String message,String otherUsername,String otherDeviceToken})async{
//     log(roomId.toString());
//     log("id "+controller.userProfileModel.value.data.id.toString());
//     if(socket.connected){
//       socket?.emit(
//           'sendMessage',{
//         "send_from_user_id" : controller.userProfileModel.value.data.id.toString(),
//         "send_to_user_id" : toUser,
//         "chat_room_id" : roomId,
//         "message" : message,
//         "send_from_username" : controller.userProfileModel.value.data.extensionProfile.username,
//         "send_to_username" : "komal",
//         "device_token" : otherDeviceToken
//       }
//       );
//     }
//     log(socket.connected.toString());
//     return socket.connected;
//   }
//
//   void disconnect()async{
//     await socket?.disconnect();
//     log(socket.disconnected.toString());
//   }
//
// }
