import 'package:bookly/features/home/view_model/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'book_horizontal_Item.dart';

class BooksHorizontalList extends ConsumerStatefulWidget {
  const BooksHorizontalList({
    super.key,
    required this.imageHeight,
    required this.imageWidth,
  });
  final int imageWidth;
  final int imageHeight;
  @override
  ConsumerState<BooksHorizontalList> createState() =>
      _BooksHorizontalListState();
}

class _BooksHorizontalListState extends ConsumerState<BooksHorizontalList> {
  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(allBooksNotifierProvider);
    if (state.isLoading == true) return CircularProgressIndicator();
    if (state.errorMessage != null) {
      return Center(child: Text(state.errorMessage!));
    }
    final books = state.allBooks;
    return ListView.separated(
      itemCount: books.length,
      scrollDirection: Axis.horizontal,

      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            context.go('/book_details', extra: books[index]);
          },
          child: BookHorizontalItem(
            image: books[index].image,
            width: widget.imageWidth,
            height: widget.imageHeight,
          ),
        );
      },
      separatorBuilder: (context, index) {
        return SizedBox(width: 8);
      },
    );
  }
}
