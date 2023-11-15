import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

import '../../../data/reops/home_repo.dart';

part 'featured_newestbooks_state.dart';

class NewestbooksCubit extends Cubit<NewestbooksState> {
  NewestbooksCubit(this.homeRepo) : super(NewestbooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchNewestBook() async {
    emit(NewestbooksLoading());
    var result = await homeRepo.fetchNewsetBooks();
    result.fold((failuer) => {emit(NewestbooksFailure(failuer.errorMassage))},
        (books) => {emit(NewestbooksSuccess(books))});
  }
}
