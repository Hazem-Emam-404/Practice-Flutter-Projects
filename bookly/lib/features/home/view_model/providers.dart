import 'package:bookly/core/api_service.dart';
import 'package:bookly/features/home/data/repository/home_repo.dart';
import 'package:bookly/features/home/data/repository/home_repo_impl.dart';
import 'package:bookly/features/home/view_model/all_books_notifier.dart';
import 'package:bookly/features/home/view_model/all_books_states.dart';
import 'package:bookly/features/home/view_model/best_seller_books_notifier.dart';
import 'package:bookly/features/home/view_model/best_seller_states.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

final booksRepoProvider = Provider<HomeRepo>((ref) {
  return HomeRepoImpl(apiService: ApiService(dio: Dio()));
});

final allBooksNotifierProvider = StateNotifierProvider<AllBooksNotifier,AllBooksState>((ref){
  final repo = ref.watch(booksRepoProvider);
  return AllBooksNotifier(repo: repo);
});

final bestSellerBooksNotifierProvider = StateNotifierProvider<BestSellerBooksNotifier,BestSellerState>((ref){
  final repo = ref.watch(booksRepoProvider);
  return BestSellerBooksNotifier(repo: repo);
});