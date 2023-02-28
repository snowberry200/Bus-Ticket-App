// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class dateScreen extends StatefulWidget {
  const dateScreen({Key? key}) : super(key: key);

  @override
  State<dateScreen> createState() => _dateScreenState();
}

class _dateScreenState extends State<dateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Date'),backgroundColor: const Color(0xff438A5E),),
    );
  }
}