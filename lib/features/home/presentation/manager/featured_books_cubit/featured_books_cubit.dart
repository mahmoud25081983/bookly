import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/book_model/book_model.dart';
import '../../../data/reops/home_repo.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksCubitInitial());
  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBook() async {
    emit(FeaturedBooksCubitLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold(
        (failuer) => {emit(FeaturedBooksCubitFailure(failuer.errorMassage))},
        (books) => {emit(FeaturedBooksCubitSuccess(books))});
  }
}
