import 'package:flutter/material.dart';
import 'package:rugram/domain/models/post_preview.dart';

class ProfileInfo extends StatelessWidget {

  const ProfileInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const double avatarRadius = 65;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
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
                padding: EdgeInsets.only(left: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Barvinskiy Dmitriy',
                  style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 18

                ),
                ),
                    Text('+79115846214',
                      style: TextStyle(
                          fontWeight: FontWeight.w100,fontSize: 18
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('13.02.2002',
                      style: TextStyle(
                      fontWeight: FontWeight.bold,fontSize: 18
                    ),
                    ),
                    Text('dbarvinskiy@mail.ru',
                      style: TextStyle(
                          fontWeight: FontWeight.w100,fontSize: 18
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}