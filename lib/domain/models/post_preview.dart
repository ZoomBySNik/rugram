import 'package:equatable/equatable.dart';
import 'package:rugram/domain/models/user_preview.dart';

class PostPreview extends Equatable {
  final String id;
  final String text;
  final String image;
  final int likes;
  final List<String> tags;
  final String publishDate;
  final UserPreview owner;

  const PostPreview({
    required this.id,
    required this.text,
    required this.image,
    required this.likes,
    required this.tags,
    required this.publishDate,
    required this.owner,
  });

  @override
  List<Object?> get props => [
        id,
        text,
        image,
        likes,
        tags,
        publishDate,
        owner,
      ];
}
