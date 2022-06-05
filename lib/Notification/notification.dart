import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:notification/debug_print.dart';
import 'package:notification/second_screen.dart';
// ignore: slash_for_doc_comments
/**
 * Documents added by Alaa, enjoy ^-^:
 * There are 3 major things to consider when dealing with push notification :
 * - Creating the notification
 * - Hanldle notification click
 * - App status (foreground/background and killed(Terminated))
 *
 * Creating the notification:
 *
 * - When the app is killed or in background state, creating the notification is handled through the back-end services.
 *   When the app is in the foreground, we have full control of the notification. so in this case we build the notification from scratch.
 *
 * Handle notification click:
 *
 * - When the app is killed, there is a function called getInitialMessage which
 *   returns the remoteMessage in case we receive a notification otherwise returns null.
 *   It can be called at any point of the application (Preferred to be after defining GetMaterialApp so that we can go to any screen without getting any errors)
 * - When the app is in the background, there is a function called onMessageOpenedApp which is called when user clicks on the notification.
 *   It returns the remoteMessage.
 * - When the app is in the foreground, there is a function flutterLocalNotificationsPlugin, is passes a future function called onSelectNotification which
 *   is called when user clicks on the notification.
 *
 * */
class PushNotificationService {
  // It is assumed that all messages contain a data field with the key 'type'
  Future<void> setupInteractedMessage() async {
    await Firebase.initializeApp();
// Get any messages which caused the application to open from a terminated state.
    // If you want to handle a notification click when the app is terminated, you can use `getInitialMessage`
    // to get the initial message, and depending in the remoteMessage, you can decide to handle the click
    // This function can be called from anywhere in your app, there is an example in main file.
    // RemoteMessage? initialMessage =
    //     await FirebaseMessaging.instance.getInitialMessage();
    // // If the message also contains a data property with a "type" of "chat",
    // // navigate to a chat screen
    // if (initialMessage != null && initialMessage.data['key'] == 'background') {
    //   consolePrint(label: "data",data: initialMessage.data.toString());
    //   Get.to(()=>Second());
    // }
// Also handle any interaction when the app is in the background via a
    // Stream listener
    // This function is called when the app is in the background and user clicks on the notification
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      // Get.toNamed(NOTIFICATIOINS_ROUTE);
      consolePrint(label: message.toMap().toString());
      if(message.data['key']=="second"){
        consolePrint(label: "third");

        Get.to(()=>Second());
      }
    });
    await enableIOSNotifications();
    await registerNotificationListeners();
  }

  registerNotificationListeners() async {
    AndroidNotificationChannel channel = androidNotificationChannel();
    final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();
    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
        AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);
    var androidSettings = AndroidInitializationSettings('@mipmap/ic_launcher');
    var iOSSettings = IOSInitializationSettings(
      requestSoundPermission: false,
      requestBadgePermission: false,
      requestAlertPermission: false,
    );
    var initSetttings =
    InitializationSettings(android: androidSettings, iOS: iOSSettings);
    flutterLocalNotificationsPlugin.initialize(initSetttings, onSelectNotification: (message) async {
      consolePrint(label: "Foreground On Tap "+message!);
          // This function handles the click in the notification when the app is in foreground
          // Get.toNamed(NOTIFICATIOINS_ROUTE);
        });
// onMessage is called when the app is in foreground and a notification is received
    FirebaseMessaging.onMessage.listen((RemoteMessage? message) {
      consolePrint(label: "second");
      if(message?.data['key']=="second"){
        Get.to(()=>Second());
      }


      // Get.find<HomeController>().getNotificationsNumber();
      RemoteNotification? notification = message!.notification;
      AndroidNotification? android = message.notification?.android;
// If `onMessage` is triggered with a notification, construct our own
      // local notification to show to users using the created channel.
      if (notification != null && android != null) {
        flutterLocalNotificationsPlugin.show(
          notification.hashCode,
          notification.title,
          notification.body,
          NotificationDetails(
            android: AndroidNotificationDetails(
              channel.id,
              channel.name,
              icon: android.smallIcon,
              playSound: true,
            ),
          ),
        );
      }
    });

  }
  enableIOSNotifications() async {
    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true, // Required to display a heads up notification
      badge: true,
      sound: true,
    );
  }
  androidNotificationChannel() => AndroidNotificationChannel(
    'high_importance_channel', // id
    'High Importance Notifications', // title// description
    importance: Importance.max,
  );
}
/// In background this function will work
/// do it on splash
checkSplash()async{
  RemoteMessage? initialMessage =
  await FirebaseMessaging.instance.getInitialMessage();
  // If the message also contains a data property with a "type" of "chat",
  // navigate to a chat screen
  if (initialMessage != null && initialMessage.data['key'] == 'background') {
    consolePrint(label: "data",data: initialMessage.data.toString());
    Get.to(()=>Second());
  }
}

///data is important when you want notification in your app in background and terminate state
///
/// Important
/// api structure for notification
//{
//   "to" : "dP9do6SmQpO35uorRVuarV:APA91bHVZy3V2eZnECc3UoHdf9ZhU1tna_EpVFBAEgAjCV_PC39iK5DxHCXoRS2EcvNpyRiC-zKXoxRLVZHF3SkBGiny1zxm6xptsAlui4DyQTY7iGWtGWXG6ie04p7F5ZZ4IUj6bNeN",
//   "collapse_key" : "type_a",
//   "priority": 10,
//   "data" : {
//     "body" : "Notification",
//     "title": "Notification title",
//     "key":"background"
//     },
//     "notification":{
//       "title":"Hi from Postman ",
//       "body":"great match!"
//     }
// }