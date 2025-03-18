import 'package:flutter_bloc/flutter_bloc.dart';

class CategoriesStateCubit extends Cubit<int?> {
  CategoriesStateCubit() : super(null);

  void setSelectedCategoryId(int? categoryId) {
    emit(categoryId);
  }
}
