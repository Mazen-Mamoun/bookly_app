import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utils/api_services.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiServices apiServices;

  HomeRepoImpl(this.apiServices);
  @override
  Future<Either<Failures, List<BookModel>>> fetcNewestBooks() async {
    try {
      var response = await apiServices.get(
        endpoint: "volumes?q=flutter&filtering=free-ebooks&sorting=newest",
      );

      List<BookModel> books = [];
      for (var item in response['items']) {
        books.add(BookModel.fromJson(item));
      }
      return Right(books);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailuer.fromDioError(e));
      }
      return Left(ServerFailuer(e.toString()));
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var response = await apiServices.get(
        endpoint: "volumes?q=subject:programming&filtering=free-ebooks",
      );

      List<BookModel> books = [];
      for (var item in response['items']) {
        books.add(BookModel.fromJson(item));
      }
      return Right(books);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailuer.fromDioError(e));
      }
      return Left(ServerFailuer(e.toString()));
    }
  }
}
