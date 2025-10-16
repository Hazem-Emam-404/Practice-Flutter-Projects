import 'package:bookly/features/home/view/widgets/home_screen_body.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  build(BuildContext context) {
    return Scaffold(
      body: HomeScreenBody(),
    );
  }
}
