import 'package:flutter/material.dart';
import 'package:rugram/domain/models/post_preview.dart';

class ProfileInfo extends StatelessWidget {

  const ProfileInfo({
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
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'dsgd',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('sfasa'),
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