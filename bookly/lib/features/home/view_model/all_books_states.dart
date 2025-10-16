import 'package:bookly/features/home/data/model/book_model.dart';

class AllBooksState {
  final List<BookModel> allBooks;
  final bool isLoading;
  final String? errorMessage;

  AllBooksState({
    required this.allBooks,
    required this.isLoading,
    required this.errorMessage,
  });

  factory AllBooksState.initial() {
    return AllBooksState(allBooks: [], isLoading: true, errorMessage: null);
  }
  AllBooksState copyWith({
    List<BookModel>? books,
    bool? isLoading,
    String? errorMessage,
  }) {
    return AllBooksState(
      allBooks: books ?? allBooks,
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
