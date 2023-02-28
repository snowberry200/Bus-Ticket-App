// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class sortingSettingsScreen extends StatefulWidget {
  const sortingSettingsScreen({Key? key}) : super(key: key);

  @override
  State<sortingSettingsScreen> createState() => _sortingSettingsScreenState();
}

class _sortingSettingsScreenState extends State<sortingSettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('sortingSettingsScreen'),
        backgroundColor: const Color(0xff438A5E),
      ),
    );
  }
}
