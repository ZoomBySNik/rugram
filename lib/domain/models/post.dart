import 'package:equatable/equatable.dart';

import 'user_preview.dart';

class Post extends Equatable {
  final String id;
  final String text;
  final String image;
  final int likes;
  final String link;
  final List<String> tags;
  final String publishDate;
  final UserPreview owner;

  const Post({
    required this.id,
    required this.text,
    required this.image,
    required this.likes,
    required this.link,
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
        link,
        tags,
        publishDate,
        owner,
      ];
}
