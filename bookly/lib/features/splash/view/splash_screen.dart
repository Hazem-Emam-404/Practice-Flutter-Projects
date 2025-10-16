import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import "package:go_router/go_router.dart";

import '../view_model/providers.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen>
    with TickerProviderStateMixin {
  late Animation<double> txtAnimation;
  late AnimationController txtController;

  late AnimationController logoController;
  late Animation<Offset> logAnimation;

  @override
  void initState() {
    logoController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );
    logAnimation = Tween<Offset>(
      begin: Offset(0, -5),
      end: Offset(0, 0),
    ).animate(logoController)..addStatusListener((status) {});
    logoController.forward();

    txtController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );
    txtAnimation = Tween<double>(begin: 0, end: 22).animate(txtController)
      ..addListener(() {
        ref.read(textAnimationProvider.notifier).update(txtAnimation.value.toInt());
        print(txtController.value);
      });


    Future.delayed(const Duration(milliseconds: 1500)).then((value) {
      txtController.forward();
    });

    Future.delayed(const Duration(seconds: 4), () {
      context.go("/home_screen");
    });

    super.initState();
  }

  @override
  void dispose() {
    logoController.dispose();
    txtController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    final progress = ref.watch(textAnimationProvider);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: double.infinity),
          SlideTransition(
            position: logAnimation,
            child: Container(
              width: 200,
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(fit: BoxFit.cover,image: NetworkImage("https://play-lh.googleusercontent.com/NEq4DJuHYfrhQj5oL8qaPrgSles5m9tG0ESlWin9bx69bMHNH_iiXzNzJtF7kGuMi5U"))
              ),
            ),

          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Enjoy Reading Your Favourite book",
              style: GoogleFonts.fjallaOne(
                fontSize: progress.toDouble(),
                fontWeight: FontWeight.bold,
                color: Color(0XFFa905f5),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
