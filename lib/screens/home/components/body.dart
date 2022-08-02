import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/components/search_box.dart';
import 'package:food_app/constants.dart';
import 'package:food_app/screens/home/components/category_item.dart';
import 'package:food_app/screens/home/components/category_list.dart';
import 'package:food_app/screens/home/components/discout_card.dart';
import 'package:food_app/screens/home/components/item_card.dart';
import 'package:food_app/screens/home/components/item_list.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 搜索框
        SearchBox(
          onChanged: (value) {},
        ),
        // 分类列表
        CategoryList(),
        ItemList(),
        DiscountCard()
      ],
    );
  }
}



