import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;

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
          child: CustomBookImage(
            imageUrl: bookModel.volumeInfo!.imageLinks!.thumbnail!,
          ),
        ),
        SizedBox(height: 10),
        Text(
          bookModel.volumeInfo!.title!,
          textAlign: TextAlign.center,

          style: Styles.textStyle30,
        ),

        SizedBox(height: 6),
        Text(
          bookModel.volumeInfo!.authors![0],
          textAlign: TextAlign.center,
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
