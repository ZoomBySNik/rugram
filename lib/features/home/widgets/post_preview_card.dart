import 'package:flutter/material.dart';
import 'package:rugram/domain/models/post_preview.dart';
import 'package:rugram/ui/components/cached_network_image_component.dart';

import 'post_preview_info.dart';
import 'user_preview_header.dart';

class PostPreviewCard extends StatelessWidget {
  final PostPreview postPreview;

  const PostPreviewCard({
    required this.postPreview,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;

    return ColoredBox(
      color: Colors.white,
      child: Column(
        children: [
          UserPreviewHeader(userPreview: postPreview.owner),
          CachedNetworkImageComponent(
            url: postPreview.image,
            fit: BoxFit.cover,
            width: size,
            height: size,
          ),
          PostPreviewInfo(postPreview: postPreview),
        ],
      ),
    );
  }
}
