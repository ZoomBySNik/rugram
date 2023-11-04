import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rugram/domain/models/user_preview.dart' as domain;

part 'user_preview.freezed.dart';
part 'user_preview.g.dart';

@freezed
class UserPreview with _$UserPreview {
  const factory UserPreview({
    @Default('') String id,
    @Default('') String title,
    @Default('') String firstName,
    @Default('') String lastName,
    @Default('') String picture,
  }) = _UserPreview;

  factory UserPreview.fromJson(Map<String, dynamic> json) =>
      _$UserPreviewFromJson(json);
}

extension UserPreviewEntity on UserPreview {
  domain.UserPreview toEntity() {
    return domain.UserPreview(
      id: id,
      title: title,
      firstName: firstName,
      lastName: lastName,
      picture: picture,
    );
  }
}
