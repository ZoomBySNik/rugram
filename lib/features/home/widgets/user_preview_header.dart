import 'package:flutter/material.dart';
import 'package:rugram/domain/models/user_preview.dart';
import 'package:rugram/ui/components/cached_network_image_component.dart';

class UserPreviewHeader extends StatelessWidget {
  final UserPreview userPreview;

  const UserPreviewHeader({
    required this.userPreview,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const double avatarRadius = 15;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: avatarRadius,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(avatarRadius),
                  child: CachedNetworkImageComponent(
                    url: userPreview.picture,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userPreview.firstName,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(userPreview.lastName),
                  ],
                ),
              ),
            ],
          ),
          const Icon(Icons.more_horiz),
        ],
      ),
    );
  }
}
