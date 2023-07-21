import '../../../../core/errors/failuer.dart';
import '../models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failuer, List<BookModel>>> fetchBestSellerBooks();
  Future<Either<Failuer, List<BookModel>>> fetchFeaturedBooks();
}
