import 'package:flutter/material.dart';

class PostsPreviewGrid extends StatefulWidget {
  PostsPreviewGrid({
    Key? key,
  }) : super(key: key);

  @override
  _PostsPreviewGridState createState() => _PostsPreviewGridState();
}

class _PostsPreviewGridState extends State<PostsPreviewGrid> {
  int selectedPostIndex = -1;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Сброс выбранного поста при тапе в серую область
        setState(() {
          selectedPostIndex = -1;
        });
      },
      child: Stack(
        children: [
          GridView.builder(
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 1,
              mainAxisSpacing: 1,
            ),
            itemCount: 15,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedPostIndex = selectedPostIndex == index ? -1 : index;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black12,
                  ),
                ),
              );
            },
          ),
          if (selectedPostIndex != -1) buildSelectedPostOverlay(),
        ],
      ),
    );
  }

  Widget buildSelectedPostOverlay() {
    // Здесь можно использовать данные выбранного поста
    // Например, использовать модель данных или другую логику
    // для отображения информации о выбранном посте.
    return Positioned.fill(
      child: Container(
        color: Colors.black54,
        child: Center(
          child: Text(
            'Выбранный пост $selectedPostIndex',
            style: TextStyle(color: Colors.white, fontSize: 20.0),
          ),
        ),
      ),
    );
  }
}
