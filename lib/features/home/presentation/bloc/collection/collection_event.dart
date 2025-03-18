part of 'collection_bloc.dart';

sealed class CollectionEvent {
  const CollectionEvent();
}

class GetCollection extends CollectionEvent {
  const GetCollection({
    required this.collectionId,
  });

  final int collectionId;
}
