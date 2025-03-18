import 'package:monobox/features/address_setup/domain/entities/geo_available_entity.dart';

import '../../../../core/resources/data_state.dart';
import '../entities/geo_suggestion_entity.dart';

abstract class GeoRepository {
  Future<DataState<List<GeoSuggestionEntity>>> geoSuggestion(
    String city,
    String search,
  );
  Future<DataState<GeoAvailableEntity>> geoAvailable(
    double lat,
    double lon,
  );
}
