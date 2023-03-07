import 'package:flutter/material.dart';
import 'package:unimics_flutter_course/constants/colors.dart';
import 'package:unimics_flutter_course/constants/sizes.dart';

import '../components/widgets/detail_screen_appbar.dart';

class BookDetailScreen extends StatelessWidget {
  const BookDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: const DetailScreenAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSizes.padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.red,
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.only(top: 100, left: 0),
              child: const Text('Container 1'),
            ),
            Container(
              color: Colors.blue,
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.only(top: 10, left: 0),
              child: const Text('Container 2'),
            ),
            const SizedBox(
              height: 40,
            ),
            Transform.rotate(
              angle: 20,
              child: Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.deepPurple,
                      spreadRadius: 4,
                      blurRadius: 15,
                      offset: Offset.fromDirection(1, 30),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
