// ignore_for_file: camel_case_types, duplicate_ignore, prefer_const_constructors

import 'package:flutter/material.dart';

// ignore: camel_case_types
class complainsScreen extends StatefulWidget {
  const complainsScreen({Key? key}) : super(key: key);

  @override
  State<complainsScreen> createState() => _complainsScreenState();
}

class _complainsScreenState extends State<complainsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ComplainsScreenomplains')),
    );
  }
}
