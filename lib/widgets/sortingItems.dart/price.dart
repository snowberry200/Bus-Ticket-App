// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class priceScreen extends StatefulWidget {
  const priceScreen({Key? key}) : super(key: key);

  @override
  State<priceScreen> createState() => _priceScreenState();
}

class _priceScreenState extends State<priceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Price'),backgroundColor: const Color(0xff438A5E),),
    );
  }
}
