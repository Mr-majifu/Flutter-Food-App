
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/constants.dart';

AppBar homeAppBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0, // 阴影
      leading: IconButton(
        icon: SvgPicture.asset('assets/icons/menu.svg'),
        onPressed: () {},
      ),
      title: RichText(
        text: TextSpan(
          style: TextStyle(fontSize: 20),
          children: [
            TextSpan(
              text: "Punk", 
              style: TextStyle(color: Colors.black)
            ),
            TextSpan(
              text: "Food", 
              style: TextStyle(color: kPrimaryColor)
            ),
          ],
        ),
      ),
      actions: [
        IconButton(
          icon: SvgPicture.asset('assets/icons/notification.svg'),
          onPressed: () {
            
          },
        )
      ],
    );
  }