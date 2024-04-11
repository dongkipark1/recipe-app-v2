import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:recipe_app2/components/recipe_list_item.dart';
import 'package:recipe_app2/components/recipe_menu.dart';
import 'package:recipe_app2/components/recipe_title.dart';

class RecipeBody extends StatelessWidget {

  final list = ["coffee", "pizza", "burger"]; // List<String>

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView(
        children: [
          RecipeTitle(),
          RecipeMenu(),
          for(String text in list) RecipeListItem(title: text),
          // for문 돌면서 RecipeListItem을 하나씩 리턴 해준다.
        ],
      ),
    );
  }
}

