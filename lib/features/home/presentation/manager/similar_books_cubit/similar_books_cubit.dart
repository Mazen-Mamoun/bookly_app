import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:bookly_app/features/home/presentation/manager/similar_books_cubit/similar_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(InitialSimilarBooks());
  final HomeRepo homeRepo;

  Future<void> fetchSimilarBooks({required String category}) async {
    emit(LoadingSimilarBooks());
    var result = await homeRepo.fetcSimilarBooks(category: category);
    result.fold(
      (failure) => emit(FailureSimilarBooks(failure.errMessage)),
      (books) => emit(SuccessSimilarBooks(books)),
    );
  }
}
