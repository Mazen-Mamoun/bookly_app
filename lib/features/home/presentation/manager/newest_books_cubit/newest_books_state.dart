import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';

abstract class NewestBooksState {}

class InitialNewestBooks extends NewestBooksState {}

class LoadingNewestBooks extends NewestBooksState {}

class SuccessNewestBooks extends NewestBooksState {
 final List<BookModel> book;
  SuccessNewestBooks(this.book);
}

class FailureNewestBooks extends NewestBooksState {
  final String errMessage;
   FailureNewestBooks(this.errMessage);
}