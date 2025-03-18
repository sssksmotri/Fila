part of 'collections_bloc.dart';

sealed class CollectionsState extends Equatable {
  const CollectionsState({this.collections});

  final List<CollectionEntity>? collections;

  @override
  List<Object> get props => [collections!];
}

final class CollectionsInitial extends CollectionsState {}

class CollectionsLoading extends CollectionsState {
  const CollectionsLoading();
}

class CollectionsDone extends CollectionsState {
  const CollectionsDone(List<CollectionEntity> collections)
      : super(
          collections: collections,
        );
}

class CollectionsError extends CollectionsState {
  const CollectionsError();
}
