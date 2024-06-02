import 'package:flutter/material.dart';
import 'package:duo_finances/src/ui/pages/widgets/custom_header.dart';

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.deepPurple,
        child: const SafeArea(
          child: Column(
            children: <Widget>[
              CustomHeader(),
            ],
          ),
        ),
      ),
    );
  }
}
