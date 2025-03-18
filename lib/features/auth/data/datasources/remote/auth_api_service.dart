import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

import '../../models/access_token_dto.dart';
import '../../models/code_request_dto.dart';
import '../../models/code_sent_dto.dart';

part 'auth_api_service.g.dart';

@RestApi()
abstract class AuthApiService {
  factory AuthApiService(Dio dio) = _AuthApiService;

  @POST('/auth/code')
  Future<CodeSentDto> getSmsCode(
    @Body() CodeRequestDto codeRequestDto,
  );

  @POST('/auth/login')
  Future<AccessTokenDto> getAccessToken(
    @Body() CodeRequestDto codeRequestDto,
  );
}
