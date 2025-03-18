import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class AppMessaging {
  static AppMessaging? _instance;

  AppMessaging._internal() {
    _instance = this;
  }

  factory AppMessaging() => _instance ?? AppMessaging._internal();

  final _firebaseMessaging = FirebaseMessaging.instance;

  final _androidChanel = const AndroidNotificationChannel(
    'fcm_default_channel',
    'Default notification channel',
    importance: Importance.max,
  );

  final _localNotifications = FlutterLocalNotificationsPlugin();

  bool initialized = false;

  String? get deviceToken => _deviceToken;

  String? _deviceToken;

  Future init() async {
    await requestPermission();
    await requestFirebaseToken();

    _firebaseMessaging.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );

    FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);

    FirebaseMessaging.onMessage.listen((message) {
      final notification = message.notification;

      if (notification == null) return;

      _localNotifications.show(
        notification.hashCode,
        notification.title,
        notification.body,
        NotificationDetails(
          android: AndroidNotificationDetails(
            _androidChanel.id,
            _androidChanel.name,
            channelDescription: _androidChanel.description,
            icon: '@mipmap/ic_launcher',
          ),
        ),
      );
    });

    RemoteMessage? initialMessage =
        await _firebaseMessaging.getInitialMessage();
  }

  requestPermission() async {
    NotificationSettings settings = await _firebaseMessaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );
  }

  requestFirebaseToken() {
    _firebaseMessaging.getToken().then((token) {
      _deviceToken = token;
      print('device token = $token');
    });
  }
}

Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  print('Title: ${message.notification?.title}');
  print('Body: ${message.notification?.body}');
  print('Payload: ${message.data}');
}
