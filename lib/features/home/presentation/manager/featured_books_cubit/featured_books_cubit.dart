import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:bookly_app/features/home/presentation/manager/featured_books_cubit/featured_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksCubit extends Cubit {
  FeaturedBooksCubit(this.homeRepo) : super(InitialFeaturedBooks());
  final HomeRepo homeRepo;
  Future<void> fetchFeaturedBooks() async {
    emit(LoadingFeaturedBooks());

    var result = await homeRepo.fetchFeaturedBooks();
    result.fold(
      (failure) => emit(FailureFeaturedBooks(failure.errMessage)),
      (books) => emit(SuccessFeaturedBooks(books)),
    );
  }
}
