import 'package:equatable/equatable.dart';

class PostCreate extends Equatable {
  /// length: 6-50, preview only
  final String text;

  /// url
  final String image;

  /// init value: 0
  final int likes;
  final List<String> tags;

  /// User id
  final String owner;

  const PostCreate({
    required this.text,
    required this.image,
    required this.likes,
    required this.tags,
    required this.owner,
  });

  @override
  List<Object?> get props => [
        text,
        image,
        likes,
        tags,
        owner,
      ];
}
