import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:monobox/features/basket/domain/entities/basket_info_request_entity.dart';
import 'package:monobox/features/home/data/repository/mappers/products_mapper.dart';

import '../../../../core/resources/data_state.dart';
import '../../../order/data/datasources/remote/order_api_service.dart';
import '../../../order/data/models/basket_info_dto.dart';
import '../../../order/data/models/basket_info_request_basket_dto.dart';
import '../../../order/data/models/basket_info_request_dto.dart';
import '../../../order/data/models/basket_modifire_dto.dart';
import '../../domain/entities/basket_info_entity.dart';
import '../../domain/entities/basket_offer_entity.dart';
import '../../domain/entities/basket_pretotal_info_entity.dart';
import '../../domain/entities/basket_total_info_entity.dart';
import '../../domain/repository/basket_repository.dart';
import '../data_sources/locale/basket_locale.dart';
import '../models/basket_offer_dto.dart';
import 'mappers/basket_offer_mapper.dart';

class BasketRepositoryImpl implements BasketRepository {
  final BasketLocale _basketLocale;
  final OrderApiService _service;

  BasketRepositoryImpl({
    required BasketLocale basketLocale,
    required OrderApiService service,
  })  : _basketLocale = basketLocale,
        _service = service;

  @override
  Future<DataState<void>> addBasketItem(BasketOfferEntity offer) async {
    return DataSuccess(
      await _basketLocale.addBasketItem(
        BasketOfferMapper.toModel(
          offer,
        ),
      ),
    );
  }

  @override
  Future<DataState<List<BasketOfferEntity>>> getAllBasketItems() async {
    List<BasketOfferDto> offers = _basketLocale.getAllBasketItems();

    return DataSuccess(BasketOfferMapper.toEntities(offers));
  }

  @override
  Future<DataState<void>> removeAllBasketItems() async {
    return DataSuccess(
      await _basketLocale.removeAllBasketItems(),
    );
  }

  @override
  Future<DataState<void>> removeBasketItem(BasketOfferEntity offer) async {
    return DataSuccess(
      await _basketLocale.removeBasketItem(
        BasketOfferMapper.toModel(
          offer,
        ),
      ),
    );
  }

  @override
  Future<DataState<BasketInfoEntity>> getBasketInfo(List<BasketInfoRequestEntity> request, int deliveryId) async {
    try {
      var requestDto = BasketInfoRequestBasketDto(
        basket: request.map((r) => BasketInfoRequestDto(
          id: r.id,
          qnt: r.qnt,
          modifiers: r.modifiers.map((m) => BasketModifireDto(
            id: m.id ?? 0,
            qnt: m.qnt ?? 0,
          )).toList() ?? [],
        )).toList(),
        deliveryId: deliveryId,
      );
      BasketInfoDto basketInfo = await _service.basketInfo(requestDto);
      print(jsonEncode(requestDto.toJson()));
      return DataSuccess(
        BasketInfoEntity(
          products: ProductsMapper.toProductsEntity(basketInfo.products),
          totalInfo: BasketTotalInfoEntity(
            total: basketInfo.totalInfo.total,
            discountPrice: basketInfo.totalInfo.discountPrice,
          ),
          pretotalInfo: basketInfo.pretotalInfo
              .map((pretotalInfo) => BasketPretotalnfoEntity(
            title: pretotalInfo.title ?? "",
            value: pretotalInfo.value ?? "",
          ))
              .toList(),
          bonusInfo: BasketPretotalnfoEntity(
            title: basketInfo.bonusInfo.title ?? "",
            value: basketInfo.bonusInfo.value ?? "",
          ),
          warnings: basketInfo.warnings,
        ),
      );
    } on DioException catch (e) {
      print('DioException in getBasketInfo: ${e.message}');
      print('Response status: ${e.response?.statusCode}');
      final responseData = e.response?.data.toString();
      if (responseData != null) {
        const maxLogLength = 1000;
        print('Response data: ${responseData.length > maxLogLength ? responseData.substring(0, maxLogLength) + '...' : responseData}');
      }

      String errorMessage = 'Не удалось получить информацию о корзине.';
      if (e.response?.statusCode == 500) {
        errorMessage = 'Ошибка сервера: неверный формат запроса. Пожалуйста, попробуйте снова.';
      }

      return DataFailed(
        DioException(
          requestOptions: e.requestOptions,
          message: errorMessage,
          response: e.response,
          error: e.error,
        ),
      );
    }
  }
}