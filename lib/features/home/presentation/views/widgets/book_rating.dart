import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start, 
  });
  final MainAxisAlignment mainAxisAlignment;
  // final int rating;
  // final int countRating;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children:  [
        Icon(FontAwesomeIcons.solidStar, color: Colors.yellow, size: 15),
        SizedBox(width: 7),
        Text(("4.8"), style: Styles.textStyle16),
        SizedBox(width: 9),
        Opacity(opacity: 0.5, child: Text("(1238)", style: Styles.textStyle14)),
      ],
    );
  }
}
