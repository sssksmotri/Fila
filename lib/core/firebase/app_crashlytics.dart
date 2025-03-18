import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';

class AppCrashlytics {
  static AppCrashlytics? _instance;

  AppCrashlytics._internal() {
    _instance = this;
  }

  factory AppCrashlytics() => _instance ?? AppCrashlytics._internal();

  static const bool crashlyticsDebugEnabled = false;

  init() async {
    if (kDebugMode && !crashlyticsDebugEnabled) {
      // Force disable Crashlytics collection while doing every day development.
      // Temporarily toggle this to true if you want to test crash reporting in your app.
      await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(false);

      return;
    } else {
      await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);

      // Handle Crashlytics enabled status when not in Debug,
      // e.g. allow your users to opt-in to crash reporting.

      // The following lines are the same as previously explained in "Handling uncaught errors"
      FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;

      // FlutterError.onError = (errorDetails) {
      //   FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
      // };

      PlatformDispatcher.instance.onError = (error, stack) {
        FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
        return true;
      };

      // l
      //     .where((msg) => msg.level.maybeWhen(
      //           error: () => true,
      //           warning: () => true,
      //           orElse: () => crashlyticsLogAll,
      //         ))
      //     .map<String>((msg) => msg.message.toString())
      //     .listen((data) {
      //   FirebaseCrashlytics.instance.log(data);
      // });
    }
  }
}
