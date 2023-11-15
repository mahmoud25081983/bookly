part of 'featured_newestbooks_cubit.dart';

sealed class NewestbooksState extends Equatable {
  const NewestbooksState();

  @override
  List<Object> get props => [];
}

final class NewestbooksInitial extends NewestbooksState {}

final class NewestbooksLoading extends NewestbooksState {}

final class NewestbooksSuccess extends NewestbooksState {
  final List<BookModel> books;

  const NewestbooksSuccess(this.books);
}

final class NewestbooksFailure extends NewestbooksState {
  final String errMessage;
  const NewestbooksFailure(this.errMessage);
}
