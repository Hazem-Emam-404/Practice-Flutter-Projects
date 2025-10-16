import 'package:bookly/features/home/view/widgets/best_seller_list.dart';
import 'package:flutter/material.dart';

class BestSellerWidget extends StatelessWidget {
  const BestSellerWidget({super.key});


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Best Seller",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
        SizedBox(height: 21,),
        BestSellerList(),

      ],
    );
  }
}
