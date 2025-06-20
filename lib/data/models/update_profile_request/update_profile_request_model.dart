import 'package:food_delivery_app/domain/entity/updateProfileRequest/update_profile_request_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'update_profile_request_model.g.dart';

@JsonSerializable()
class UpdateProfileRequest extends UpdateProfileRequestEntity {
  const UpdateProfileRequest({
    super.name,
    super.phone,
    super.address,
  });

  factory UpdateProfileRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateProfileRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateProfileRequestToJson(this);
}