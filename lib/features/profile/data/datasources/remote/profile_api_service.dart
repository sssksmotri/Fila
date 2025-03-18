import 'package:monobox/features/profile/data/models/delete_profile_response_dto.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

import '../../models/add_child_request_dto.dart';
import '../../models/child_dto.dart';
import '../../models/edit_user_dto.dart';
import '../../models/notification_dto.dart';
import '../../models/notification_item_dto.dart';
import '../../models/notification_status_dto.dart';
import '../../models/profile_dto.dart';
import '../../models/user_dto.dart';

part 'profile_api_service.g.dart';

@RestApi()
abstract class ProfileApiService {
  factory ProfileApiService(Dio dio) = _ProfileApiService;

  @GET('/profile')
  Future<ProfileDto> profile();

  @DELETE('/profile')
  Future<DeleteProfileResponseDto> deleteProfile();

  @PATCH('/profile/')
  Future<UserDto> editProfile(
    @Body() EditUserDto editUserRequest,
  );

  @GET('/profile/children')
  Future<List<ChildDto>> getChildrens();

  @PUT('/profile/children')
  Future<ChildDto> addChild(
    @Body() AddChildRequestDto addChildRequest,
  );

  @GET('/notifications')
  Future<List<NotificationDto>> getNotificationsSettings();

  @PATCH('/notifications/{id}')
  Future<NotificationItemDto> changeNotificationStatus(
    @Path('id') int id,
    @Body() NotificationStatusDto status,
  );

  @POST('/reviews/{orderId}')
  @MultiPart()
  Future<void> addReview(
    @Path('orderId') int orderId,
    //@Part() FeedbackDto feedback,
    @Part() @Field('rate1') int rate1,
    @Part() @Field('rate2') int rate2,
    @Part() @Field('rate3') int rate3,
    @Part() @Field('content') String content,
    @Part() @Field('images[]') List<MultipartFile>? images,
  );

  // @GET('/order')
  // Future<OrderCreateResponseDto> getOrders();

  // @GET('/order/{id}')
  // Future<OrderCreateResponseDto> getOrder(
  //   @Path('id') int id,
  // );
}
