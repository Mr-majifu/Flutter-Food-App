
import 'package:flutter/material.dart';
import 'package:food_app/constants.dart';

class CategoryItem extends StatelessWidget {
  
  final String title;
  final bool isActive;
  final Function() press;

  const CategoryItem({
    Key? key, 
    required this.title, 
    this.isActive = false, 
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.press,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        child: Column(
          children: [
            Text(
              this.title,
              style: isActive ? TextStyle(
                color: kTextColor, 
                fontWeight: FontWeight.bold
              ) : TextStyle(fontSize: 12),
            ),
            if (this.isActive) 
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                height: 3,
                width: 22,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(10)
                ),
              )
          ],
        ),
      ),
    );
  }
}