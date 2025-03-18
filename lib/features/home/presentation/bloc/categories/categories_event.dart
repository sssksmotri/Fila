part of 'categories_bloc.dart';

sealed class CategoriesEvent {
  const CategoriesEvent();
}

class GetCategories extends CategoriesEvent {
  const GetCategories();
}
