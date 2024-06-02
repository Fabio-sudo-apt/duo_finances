import 'package:flutter/material.dart';
import 'package:duo_finances/src/ui/pages/home_pages.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePages(),
    );
  }
}
