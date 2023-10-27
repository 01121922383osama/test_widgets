import 'package:flutter/material.dart';

class StoriesPage extends StatefulWidget {
  const StoriesPage({super.key});

  @override
  State<StoriesPage> createState() => _StoriesPageState();
}

class _StoriesPageState extends State<StoriesPage> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SwitchListTile(
        title: const Text('Change mode'),
        value: isSelected,
        onChanged: (value) {
          setState(() {
            isSelected = value;
          });
        },
      ),
    );
  }
}
