import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../model/book_model.dart';
abstract class HomeRepo{
 Future<Either<Failure,List<BookModel>>> getAllBooks();
 Future<Either<Failure,List<BookModel>>> getBestSellerBooks();
}