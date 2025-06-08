import 'package:flutter/material.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: TextField(
        onSubmitted: (value) {},
        decoration: InputDecoration(
          labelText: 'search',
          hintText: 'search',
          suffixIcon: IconButton(
            onPressed: () {},
            icon: Opacity(
              opacity: 0.5,
              child: Icon(Icons.search, color: Colors.white),
            ),
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(24)),
        ),
      ),
    );
  }
}
