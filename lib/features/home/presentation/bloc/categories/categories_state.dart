part of 'categories_bloc.dart';

sealed class CategoriesState extends Equatable {
  const CategoriesState({this.categories});

  final List<CategoryEntity>? categories;

  @override
  List<Object> get props => [categories!];
}

final class CategoriesInitial extends CategoriesState {}

class CategoriesLoading extends CategoriesState {
  const CategoriesLoading();
}

class CategoriesDone extends CategoriesState {
  const CategoriesDone(List<CategoryEntity> categories)
      : super(
          categories: categories,
        );
}

class CategoriesError extends CategoriesState {
  const CategoriesError();
}
