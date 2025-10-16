import 'package:bookly/features/home/data/model/book_model.dart';

class BestSellerState {
  final List<BookModel> books;
  final bool isLoading;
  final String? errorMessage;

  BestSellerState({
    required this.books,
    required this.isLoading,
    required this.errorMessage,
  });

  factory BestSellerState.initial() {
    return BestSellerState(books: [], isLoading: true, errorMessage: null);
  }
  BestSellerState copyWith({
    List<BookModel>? books,
    bool? isLoading,
    String? errorMessage,
  }) {
    return BestSellerState(
      books: books ?? this.books,
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
