import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {

  const ProfileInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const double avatarRadius = 45;

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
            ],

          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Column(
              children: [
                Text('Barvinskiy Dmitriy',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,fontSize: 12

                  ),
                ),
                Text('13.02.2002',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,fontSize: 12
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            TextButton(
                onPressed: () { },
                style: ButtonStyle(
                  backgroundColor:  MaterialStateProperty.all<Color>(Colors.black12),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                  padding: MaterialStateProperty.all(const EdgeInsets.symmetric(horizontal: 20, vertical: 0))
                ),
                child: const Text('Написать', style: TextStyle(height: 0),)),
            TextButton(
                onPressed: () { },
                style: ButtonStyle(
                    backgroundColor:  MaterialStateProperty.all<Color>(Colors.black12),
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                    padding: MaterialStateProperty.all(const EdgeInsets.symmetric(horizontal: 20, vertical: 0))
                ),
                child: const Text('Подписаться', style: TextStyle(height: 0),)),
            TextButton(
                onPressed: () { },
                style: ButtonStyle(
                    backgroundColor:  MaterialStateProperty.all<Color>(Colors.black12),
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                    padding: MaterialStateProperty.all(const EdgeInsets.symmetric(horizontal: 20, vertical: 0))
                ),
                child: const Text('Эл. адрес', style: TextStyle(height: 0),)),
          ],)
        ],
      ),
    );
  }
}