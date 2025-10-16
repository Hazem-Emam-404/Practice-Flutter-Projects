import 'package:flutter/material.dart';
class BookHorizontalItem extends StatelessWidget {
  const BookHorizontalItem({super.key, required this.image, required this.width, required this.height});

  final String? image;
  final int width;
  final int height;

  @override
  Widget build(BuildContext context) {
    return  Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: width.toDouble(),
        height: height.toDouble(),
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(image: NetworkImage(image ?? ""),fit: BoxFit.cover)
            ,borderRadius: BorderRadius.circular(16)
        ),
      ),
    );
  }
}
