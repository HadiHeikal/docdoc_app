import 'package:flutter/material.dart';

class DocdocApp extends StatelessWidget {
  const DocdocApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Docdoc App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Placeholder(), // Replace with your actual home widget
    );
  }
}
