import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:bookly_app/features/home/presentation/manager/newest_books_cubit/newest_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBooksCubit extends Cubit {
   NewestBooksCubit(this.homeRepo) : super(InitialNewestBooks());
  final HomeRepo homeRepo;
  Future<void> fetchNewestBooks() async {
    emit(LoadingNewestBooks());
    var result = await homeRepo.fetcNewestBooks();
    result.fold(
      (failure) => emit(FailureNewestBooks(failure.errMessage)),
      (books) => emit(SuccessNewestBooks(books)),
    );
  }
}
