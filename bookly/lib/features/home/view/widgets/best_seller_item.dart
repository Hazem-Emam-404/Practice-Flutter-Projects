import 'package:bookly/features/home/data/model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';
class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key, required this.book});

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Row(
        children: [
          Container(
            width: 70,
            height: 105,
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                image: NetworkImage(book.image),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          SizedBox(width: 30),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  book.title,
                  maxLines: 2,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    height: 1,
                  ),
                ),
                Text(
                  book.author,
                  style: GoogleFonts.montserrat(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${book.price.toString()}€",
                      style: GoogleFonts.montserrat(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.star,size: 14,color: Colors.yellow),
                        SizedBox(width: 6,),
                        Text((Random().nextDouble() * (5-3) + (3)).toStringAsFixed(2),style: GoogleFonts.montserrat(fontWeight: FontWeight.normal,fontSize: 16),),
                        SizedBox(width: 6,),
                        Text("(${Random().nextInt(1000)})",style: GoogleFonts.montserrat(fontWeight: FontWeight.w400,fontSize: 14),)
                      ],)
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
