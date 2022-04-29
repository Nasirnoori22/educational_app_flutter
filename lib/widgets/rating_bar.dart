import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconly/iconly.dart';

class RattingBarWidget extends StatelessWidget {
  const RattingBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RatingBar.builder(
          itemSize: 25,
          initialRating: 3.75,
          minRating: 1,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
          itemBuilder: (context, _) => Icon(
            IconlyBold.star,
            color: Color(0xffe4b75e),
          ),
          onRatingUpdate: (rating) {
            print(rating);
          },
        ),
        Text(
          '(120 Review)',
          style: TextStyle(color: Colors.grey.shade400),
        )
      ],
    );
  }
}
