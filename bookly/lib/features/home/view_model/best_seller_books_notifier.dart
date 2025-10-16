import 'package:bookly/features/home/view_model/best_seller_states.dart';
import 'package:flutter_riverpod/legacy.dart';

import '../data/repository/home_repo.dart';

class BestSellerBooksNotifier extends StateNotifier<BestSellerState> {
  final HomeRepo repo;
  BestSellerBooksNotifier({required this.repo}): super(BestSellerState.initial()){
    loadBooks();
  }

  Future<void> loadBooks() async{
    state = state.copyWith(isLoading: true);

    final allBooks = await repo.getBestSellerBooks();

    allBooks.fold((f)=> state = state.copyWith(errorMessage: f.message), (books) =>state = state.copyWith(books: books));

    state = state.copyWith(isLoading: false);

  }
}