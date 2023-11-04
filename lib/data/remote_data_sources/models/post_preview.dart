import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rugram/data/remote_data_sources/models/user_preview.dart';
import 'package:rugram/domain/models/post_preview.dart' as domain;

part 'post_preview.freezed.dart';
part 'post_preview.g.dart';

@freezed
class PostPreview with _$PostPreview {
  const factory PostPreview({
    @Default('') String id,
    @Default('') String text,
    @Default('') String image,
    @Default(0) num likes,
    @Default([]) List<String> tags,
    @Default('') String publishDate,
    @Default(UserPreview()) UserPreview owner,
  }) = _PostPreview;

  factory PostPreview.fromJson(Map<String, dynamic> json) =>
      _$PostPreviewFromJson(json);
}

extension PostPreviewEntity on PostPreview {
  domain.PostPreview toEntity() {
    return domain.PostPreview(
      id: id,
      text: text,
      image: image,
      likes: likes.toInt(),
      tags: tags,
      publishDate: publishDate,
      owner: owner.toEntity(),
    );
  }
}
