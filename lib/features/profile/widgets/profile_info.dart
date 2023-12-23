import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {

  final String nickname;

  const ProfileInfo({
    super.key,
    required this.nickname,
  });

  @override
  Widget build(BuildContext context) {
    const double avatarRadius = 45;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: avatarRadius,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(avatarRadius),
                ),
              ),
              _buildStatColumn('Публикации', '10'),
              _buildStatColumn('Подписчики', '1000'),
              _buildStatColumn('Подписки', '200'),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(nickname,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,fontSize: 12

                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  Widget _buildStatColumn(String label, String value) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          label,
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}

