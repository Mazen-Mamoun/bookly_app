import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.17,
            vertical: 30,
          ),
          child: CustomBookImage(imageUrl: "",),
        ),
        SizedBox(height: 10),
        Text("The Jungle Book", style: Styles.textStyle30),
        SizedBox(height: 6),
        Text(
          "Rudyard Kipling",
          style: Styles.textStyle18.copyWith(
            color: Colors.grey,
            fontStyle: FontStyle.italic,
          ),
        ),
        SizedBox(height: 10),
        BookRating(mainAxisAlignment: MainAxisAlignment.center),
      ],
    );
  }
}
