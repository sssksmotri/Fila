import 'package:dio/dio.dart';

import '../../../../core/resources/data_state.dart';
import '../../domain/entities/access_token_entity.dart';
import '../../domain/entities/get_code_status_entity.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/remote/auth_api_service.dart';
import '../models/access_token_dto.dart';
import '../models/code_request_dto.dart';
import '../models/code_sent_dto.dart';
import 'mappers/access_token_mapper.dart';
import 'mappers/sent_code_mapper.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthApiService service;

  AuthRepositoryImpl({required this.service});

  @override
  Future<DataState<GetCodeStatusEntity>> getCode(String phoneNumber) async {
    try {
      CodeSentDto codeSent = await service.getSmsCode(
        CodeRequestDto(
          phoneNumber: phoneNumber,
        ),
      );

      return DataSuccess(
        SentCodeMapper.toEntity(codeSent),
      );
    } on DioException catch (e) {
      if (e.response?.data != null && e.response?.data['message'] != null) {
        return DataFailed(
          DioException(
            requestOptions: e.requestOptions,
            message: e.response?.data['message'],
          ),
        );
      }
      return DataFailed(
        DioException(
          requestOptions: e.requestOptions,
          message: e.message,
        ),
      );
    } catch (message) {
      return DataFailed(
        DioException(
          requestOptions: RequestOptions(),
          message: message.toString(),
        ),
      );
    }

    //sended
    // if (codeSent.status != 'code' && codeSent.status != 'sended') {
    //   return DataFailed(
    //     DioException(
    //       message: codeSent.message,
    //       requestOptions: RequestOptions(),
    //     ),
    //   );
    // }
  }

  @override
  Future<DataState<AccessTokenEntity>> loginWithCode(
    String phoneNumber,
    String code,
    String? deviceId,
  ) async {
    try {
      AccessTokenDto accessTokenDto = await service.getAccessToken(
        CodeRequestDto(
          phoneNumber: phoneNumber,
          code: code,
          deviceId: deviceId,
        ),
      );

      return DataSuccess(
        AccessTokenMapper.toEntity(accessTokenDto),
      );
    } on DioException catch (e) {
      final String message = (e.response?.data['message'] != null)
          ? e.response?.data['message']
          : e.message;

      return DataFailed(
        DioException(
          requestOptions: e.requestOptions,
          message: message,
        ),
      );
    }

    //sended
    // if (codeSent.status != 'code') {
    //   return DataFailed(
    //     DioException(
    //       message: codeSent.message,
    //       requestOptions: RequestOptions(),
    //     ),
    //   );
    // }
  }
}
