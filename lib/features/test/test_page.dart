import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  static const String route = '/test_page';
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(),
    );
  }
}
