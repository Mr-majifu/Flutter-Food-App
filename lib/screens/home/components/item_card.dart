
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/constants.dart';

class ItemCard extends StatelessWidget {

  final String title, shopName, svgSrc;
  final Function() press;

  const ItemCard({
    Key? key, 
    required this.title, 
    required this.shopName, 
    required this.svgSrc, 
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // this size provide you the total height and width of the screen
    Size size = MediaQuery.of(context).size; // 媒体尺寸？

    return Container(
      margin: EdgeInsets.only(left: 20,right: 15,top: 20,bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 20,
            color: Color(0xffb0cce1).withOpacity(0.32)
          )
        ]
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: this.press,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 15),
                  padding: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    color: kPrimaryColor.withOpacity(0.13),
                    shape: BoxShape.circle
                  ),
                  child: SvgPicture.asset(
                    this.svgSrc,
                    width: size.width * 0.18,
                    // size.width * 0.18 means it use 18% of total width
                  ),
                ),
                Text(this.title),
                SizedBox(height:10),
                Text(
                  this.shopName,
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}