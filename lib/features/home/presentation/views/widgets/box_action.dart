import 'package:bookly_app/core/utils/functions/launcher_url.dart';
import 'package:bookly_app/core/widget/custom_button.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class BoxAction extends StatelessWidget {
  const BoxAction({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomButton(
            onPressed: () {},
            text: "Free",
            backgrounColor: Colors.white,
            textColor: Colors.black,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            ),
          ),
        ),
        Expanded(
          child: CustomButton(
            onPressed: () {
              launcherCustomUrl(context, bookModel.volumeInfo!.previewLink!);
            },
            text: getText(bookModel),
            backgrounColor: Color(0xffEF8262),
            textColor: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
          ),
        ),
      ],
    );
  }

  getText(BookModel bookModel) {
    if (bookModel.volumeInfo!.previewLink == null) {
      return "Not Avaliable";
    } else {
      return "Preview";
    }
  }
}
