class AppAnalytics {
  static AppAnalytics? _instance;

  AppAnalytics._internal() {
    _instance = this;
  }

  factory AppAnalytics() => _instance ?? AppAnalytics._internal();

  Future init() async {}
}
