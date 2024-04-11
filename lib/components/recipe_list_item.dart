import 'package:flutter/material.dart';

class RecipeListItem extends StatelessWidget {

  final title;

  const RecipeListItem({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio( // 가로가 기준
              aspectRatio: 2 / 1, // 비율로 정하는게 낫다
              child: ClipRRect( // RRect 네모를 둥그렇게 자른다
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "assets/images/${title}.jpeg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              "${title}",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "Have you ever made your own ${title}? Once you've tried a homemade ${title}, you'll never go back.",
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
