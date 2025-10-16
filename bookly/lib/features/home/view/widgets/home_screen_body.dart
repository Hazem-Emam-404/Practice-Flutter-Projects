import 'package:flutter/material.dart';

import 'best_seller_widget.dart';
import 'books_horizontal_list.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: ListView(
        children: [
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 100,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  image: DecorationImage(fit: BoxFit.cover,image: NetworkImage("https://play-lh.googleusercontent.com/NEq4DJuHYfrhQj5oL8qaPrgSles5m9tG0ESlWin9bx69bMHNH_iiXzNzJtF7kGuMi5U"))
                ),
              ),
              Icon(Icons.search_rounded, size: 25),
            ],
          ),
          SizedBox(height: 57,),
          SizedBox(height: 195,child: BooksHorizontalList(imageHeight: 195, imageWidth: 130,)),
          SizedBox(height: 40,),
          BestSellerWidget(),
        ],
      ),
    );
  }
}
