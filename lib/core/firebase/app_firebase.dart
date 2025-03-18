import 'package:firebase_core/firebase_core.dart';

import '../../firebase_options.dart';
import 'app_analytics.dart';
import 'app_crashlytics.dart';
import 'app_messaging.dart';

class AppFirebase {
  static AppFirebase? _instance;

  AppFirebase._internal() {
    _instance = this;
  }

  factory AppFirebase() => _instance ?? AppFirebase._internal();

  Future init() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    await AppCrashlytics().init();

    await AppAnalytics().init();

    await AppMessaging().init();
  }
}
