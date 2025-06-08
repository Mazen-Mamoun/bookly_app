import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';

abstract class FeaturedBooksState {}

class InitialFeaturedBooks extends FeaturedBooksState {}

class LoadingFeaturedBooks extends FeaturedBooksState {}

class SuccessFeaturedBooks extends FeaturedBooksState {
 final List<BookModel> book;
  SuccessFeaturedBooks(this.book);
}

class FailureFeaturedBooks extends FeaturedBooksState {
  final String errMessage;
   FailureFeaturedBooks(this.errMessage);
}
