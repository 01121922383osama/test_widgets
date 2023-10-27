import 'package:flutter/material.dart';
import 'package:test_widgets/home_page.dart';

void main() {
  runApp(const MassengerApp());
}

class MassengerApp extends StatelessWidget {
  const MassengerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
