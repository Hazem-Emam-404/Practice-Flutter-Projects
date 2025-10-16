import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'core/utils/router.dart';

void main() {
  // runApp(DevicePreview(builder: (context) => const ProviderScope(child: MyApp())));
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0XFF100B20),
        colorScheme: ColorScheme.dark(),
      ),
      routerConfig: router,
    );
  }
}
