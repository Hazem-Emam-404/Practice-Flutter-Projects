import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/legacy.dart';

import '../../../core/error/failure.dart';
import '../data/model/book_model.dart';
import '../data/repository/home_repo.dart';
import 'all_books_states.dart';

class AllBooksNotifier extends StateNotifier<AllBooksState> {
  final HomeRepo repo;
  AllBooksNotifier({required this.repo}) : super(AllBooksState.initial()){
    loadBooks();
  }

  Future<void> loadBooks() async {
    state = state.copyWith(isLoading: true);
    final Either<Failure,List<BookModel>> allBooks = await repo.getAllBooks();
    print("loading");
    allBooks.fold((f){
      print("error");
      state = state.copyWith(errorMessage: f.message);
    }, (books){
      state = state.copyWith(books: books);
      print("data");
    });
    print("stop");
    state =state.copyWith(isLoading: false);
  }
}
