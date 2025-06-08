import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.8 / 4,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/harry-potter-and-the-chamber-of-secrets-6.png",
            ),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.circular(24),
        ),
      ),
    );
  }
}
