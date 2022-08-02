
import 'package:flutter/material.dart';

class ItemImage extends StatelessWidget {

  final String imgSrc;

  const ItemImage({
    Key? key, 
    required this.imgSrc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Image.asset(
      this.imgSrc,
      height: size.height * 0.25,
      // it cover the 25% of total height
      width: double.infinity,
      fit: BoxFit.fill,
    );
  }
}