import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBookDetailAppBar extends StatelessWidget {
  const CustomBookDetailAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            GoRouter.of(context).pop();
          },
          icon: Icon(Icons.close),
        ),
        IconButton(
          onPressed: () {
          },
          icon: Icon(Icons.shopping_cart_outlined),
        ),
      ],
    );
  }
}
