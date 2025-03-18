part of 'collection_bloc.dart';

sealed class CollectionState extends Equatable {
  const CollectionState({this.collection});

  final CollectionEntity? collection;

  @override
  List<Object> get props => [collection!];
}

final class CollectionInitial extends CollectionState {}

class CollectionLoading extends CollectionState {
  const CollectionLoading();
}

class CollectionDone extends CollectionState {
  const CollectionDone(CollectionEntity collection)
      : super(
          collection: collection,
        );
}

class CollectionError extends CollectionState {
  const CollectionError();
}
