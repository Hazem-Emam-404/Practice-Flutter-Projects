import 'package:bookly/features/home/data/model/book_model.dart';
import 'package:bookly/features/home/view/widgets/best_seller_item.dart';
import 'package:bookly/features/home/view_model/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class BestSellerList extends ConsumerWidget {
  const BestSellerList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(bestSellerBooksNotifierProvider);

    if (state.isLoading) return Center(child: CircularProgressIndicator());
    if (state.errorMessage != null) {
      return Center(child: Text(state.errorMessage!));
    }

    final List<BookModel> books = state.books;
    return ListView.builder(
      itemBuilder: (context, index) {
        return GestureDetector(onTap: (){context.go("/book_details",extra: books[index]);},child: BestSellerItem(book: books[index]));
      },
      itemCount: books.length,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
    );
  }
}
