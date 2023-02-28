// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class settingsScreen extends StatefulWidget {
  const settingsScreen({Key? key}) : super(key: key);

  @override
  State<settingsScreen> createState() => _settingsScreenState();
}

class _settingsScreenState extends State<settingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: const Color(0xff438A5E),
      ),
    );
  }
}

  





// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'class.dart';
// import 'coachesScreen.dart';

// class MenuItems {
//   static  List <MenuItems> = itemsFirst=[
//     ItemSettings,
//     ItemComplains
//   ];
//   static  List<MenuItems> = itemsSecond=[
//     ItemLogout
//   ];
//   static  ItemSettings =MenuItems(text: 'settings', icon: CupertinoIcons.settings);

//   static  ItemComplains =
//       MenuItems(text: 'complaints', icon: CupertinoIcons.pen);

//   static  ItemLogout = MenuItems(
//     text:'log out',icon: Icons.logout
//   );
// }
