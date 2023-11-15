part of 'featured_books_cubit.dart';

abstract class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

class FeaturedBooksCubitInitial extends FeaturedBooksState {}

class FeaturedBooksCubitLoading extends FeaturedBooksState {}

class FeaturedBooksCubitFailure extends FeaturedBooksState {
  final String errorMsg;
  const FeaturedBooksCubitFailure(this.errorMsg);
}

class FeaturedBooksCubitSuccess extends FeaturedBooksState {
  final List<BookModel> books;
  const FeaturedBooksCubitSuccess(this.books);
}
