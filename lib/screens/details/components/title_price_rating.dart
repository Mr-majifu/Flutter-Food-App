
import 'package:flutter/material.dart';
import 'package:food_app/constants.dart';
import 'package:food_app/screens/details/details-screen.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class TitlePriceRating extends StatelessWidget {

  final int price, numOfReviews;
  final double rating;
  final String name;
  final RatingChangeCallback onRatingChangeed;

  const TitlePriceRating({
    Key? key, 
    required this.price, 
    required this.numOfReviews, 
    required this.rating, 
    required this.name, 
    required this.onRatingChangeed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          // 商品名称和评分
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  this.name,
                  style: Theme.of(context).textTheme.headline6,
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    SmoothStarRating(
                      borderColor: kPrimaryColor,
                      rating: 4,
                      onRated: onRatingChangeed,
                    ),
                    SizedBox(width: 10),
                    Text("${this.numOfReviews} reviews"),
                  ],
                )
              ],
            ),
          ),
          priceTag(context, price: this.price),
        ],
      ),
    );
  }
}

ClipPath priceTag(BuildContext context, {int? price}){
  return
    // clip 别针？
    ClipPath(
      clipper: PricerCliper(),
      child: Container(
        alignment: Alignment.topCenter,
        padding: EdgeInsets.symmetric(vertical: 15),
        height: 65,
        width: 65,
        color: kPrimaryColor,
        child: Text(
          "\$$price",
          style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
}

class PricerCliper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double ignoreHeight = 20;
    path.lineTo(0, size.height - ignoreHeight);
    path.lineTo(size.width / 2, size.height);
    path.lineTo(size.width, size.height - ignoreHeight);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }

}