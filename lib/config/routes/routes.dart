import 'package:flutter/material.dart';

import '../../features/address_setup/presentation/pages/address_map/address_map_page.dart';
import '../../features/home/presentation/pages/home_page.dart';

class AppRoutes {
  static Route onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _materialRoute(const AddressMapPage());

      case '/home':
        return _materialRoute(const HomePage());

      default:
        return _materialRoute(const AddressMapPage());
    }
  }

  static Route<dynamic> _materialRoute(Widget view) {
    return MaterialPageRoute(builder: (_) => view);
  }
}
