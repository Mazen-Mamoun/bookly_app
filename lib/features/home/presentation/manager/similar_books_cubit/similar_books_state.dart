import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';

abstract class SimilarBooksState {}

class InitialSimilarBooks extends SimilarBooksState {}

class LoadingSimilarBooks extends SimilarBooksState {}

class SuccessSimilarBooks extends SimilarBooksState {
  final List<BookModel> books;
  SuccessSimilarBooks(this.books);
}

class FailureSimilarBooks extends SimilarBooksState {
  final String errMessage;
   FailureSimilarBooks(this.errMessage);
}
