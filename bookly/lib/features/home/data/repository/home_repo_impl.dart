import 'dart:math';

import 'package:bookly/features/home/data/repository/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/api_service.dart';
import '../../../../core/error/failure.dart';
import '../model/book_model.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;
  HomeRepoImpl({required this.apiService});

  @override
  Future<Either<Failure, List<BookModel>>> getAllBooks() async {
    try {
      final response = await apiService.get(
        endPoint: "/books/v1/volumes",
        params: {"q": "adventure", "Filtering": "paid-ebooks"},
      );
      List<dynamic> jsonList = response.data['items']??[];
      final books = jsonList.map((json) {
        return BookModel.fromJson({
          "title": json['volumeInfo']['title'],
          "image": json['volumeInfo']['imageLinks']['thumbnail']?? "https://images.pexels.com/photos/1759524/pexels-photo-1759524.jpeg",
          "rate": Random().nextDouble() * 5,
          "numOfRates": Random().nextInt(10000),
          "price": json['saleInfo']?['listPrice']?['amount'] ?? Random().nextInt(1000),
          "author": json['volumeInfo']?['publisher']??"unknown",
        });
      }).toList();
      return Right(books);
    } on DioException catch (e) {
      return Left(Failure(message: e.message ?? "server error"));
    } catch (_) {
      return Left(Failure(message: 'Unexpected Error'));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> getBestSellerBooks() async {
    try {
      final response = await apiService.get(
        endPoint: "/books/v1/volumes",
        params: {"q": "children", "Filtering": "paid-ebooks"},
      );
      List<dynamic> jsonList = response.data['items']??[];
      final books = jsonList.map((json) {
        print(json['saleInfo']['listPrice']);
        return BookModel.fromJson({
          "title": json['volumeInfo']['title'],
          "image": json['volumeInfo']['imageLinks']['thumbnail']?? "https://images.pexels.com/photos/1759524/pexels-photo-1759524.jpeg",
          "rate": Random().nextDouble() * 5,
          "numOfRates": Random().nextInt(10000),
          "price": json['saleInfo']?['listPrice']?['amount'] ?? Random().nextInt(1000),
          "author": json['volumeInfo']?['publisher']??"unknown",
        });
      }).toList();
      return Right(books);
    } on DioException catch (e) {
      return Left(Failure(message: e.message ?? "server error"));
    } catch (_) {
      return Left(Failure(message: 'Unexpected Error'));
    }
  }
}
