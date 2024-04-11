import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:recipe_app2/components/recipe_body.dart';
import 'package:recipe_app2/components/recipe_menu.dart';
import 'package:recipe_app2/components/recipe_menu_item.dart';
import 'package:recipe_app2/components/recipe_title.dart';

class RecipePage extends StatelessWidget {
  const RecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(),
      body: RecipeBody(),
    );
  }


  AppBar _appbar() {
    return AppBar(
      actions: [
        Icon(CupertinoIcons.search), // 시그니처로 키 값 없음
        SizedBox(width: 15),
        Icon(
          CupertinoIcons.heart,
          color: Colors.redAccent,
        ),
        SizedBox(width: 15),
      ],
    );
  }
}







