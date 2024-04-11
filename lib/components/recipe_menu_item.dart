import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


// 레시피 메뉴 1개
class RecipeMenuItem extends StatelessWidget { // 재사용이 가능하다

  IconData mIcon; // final로 하면 타입을 정하지 않아도 자기가 알아서 함
  String text;

  RecipeMenuItem(
      {required this.mIcon,
        required this.text}
      ); // 선택적 매개변수, required 지우면 오류가 난다 - null 값이 생길 수가 있다.

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.black12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            mIcon,
            color: Colors.redAccent,
            size: 30,
          ),
          Text(
            "${text}",
            style: TextStyle(color: Colors.black87),
          ),
        ],
      ),
    );
  }
}