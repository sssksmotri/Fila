part of 'collections_bloc.dart';

sealed class CollectionsEvent {
  const CollectionsEvent();
}

class GetCollections extends CollectionsEvent {
  const GetCollections();
}
