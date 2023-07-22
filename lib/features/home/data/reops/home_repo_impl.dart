import 'package:bookly/core/errors/failuer.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/reops/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;
  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failuer, List<BookModel>>> fetchNewsetBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
              "volumes?Filtering=free-ebooks&Sorting=newest &q=subject:programming");
      List<BookModel> books = [];

      for (var item in data["items"]) {
        books.add(BookModel.fromJson(item));
      }

      return right(books);
    } catch (e) {
      return left(ServerFailuer());
    }
  }

  @override
  Future<Either<Failuer, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
