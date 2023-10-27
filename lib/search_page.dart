import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: TextField(
        decoration: InputDecoration(
          fillColor: Colors.white,
          prefixIcon: const Icon(Icons.search),
          hintText: 'Search',
          alignLabelWithHint: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          constraints: const BoxConstraints(),
          contentPadding: const EdgeInsets.all(5),
          disabledBorder: const OutlineInputBorder(),
          enabled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          label: const Text('TextFiald'),
        ),
      ),
    );
  }
}
