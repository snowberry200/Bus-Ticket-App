// // ignore_for_file: camel_case_types, file_names

// import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     const MaterialApp(debugShowCheckedModeBanner: false, home: Buyticket()),
//   );
// }

// class Buyticket extends StatefulWidget {
//   const Buyticket({Key? key}) : super(key: key);

//   @override
//   _BuyticketState createState() => _BuyticketState();
// }

// class _BuyticketState extends State<Buyticket> {
//   final List leading = [
//     infolist(title: 'From', kala: Colors.red),
//     infolist(title: 'Depart', kala: Colors.grey.shade300)
//   ];
//   final List leading1 = [
//     infolist1(title: 'From', kala: Colors.red),
//     infolist1(title: 'Passenger & Luggage', kala: Colors.grey.shade100),
//     infolist1(title: 'Class', kala: Colors.grey.shade300)
//   ];
//   final List trailing = [
//     infolist3(title: 'To', kala: Colors.red),
//     infolist4(title: 'Kumasi', kala: Colors.green.shade400)
//   ];
//   final List trailing1 = [
//     infolist4(title: 'Return', kala: Colors.grey.shade300)
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xff438A5E),
//       appBar: AppBar(
//         flexibleSpace: Row(
//             mainAxisSize: MainAxisSize.max,
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               SizedBox(
//                 width: MediaQuery.of(context).size.width,
//                 child: (const Text(
//                   'BUY TICKET',
//                   style: TextStyle(color: Colors.white, fontSize: 30),
//                 )),
//               ),
//             ]),
//         leading: const Padding(
//           padding: EdgeInsets.only(left: 30, top: 50),
//           // ignore: unnecessary_const
//           child: const Text(
//             'Start',
//             style: TextStyle(
//               color: Colors.white,
//               fontSize: 27,
//             ),
//           ),
//         ),
//         leadingWidth: 250,
//         elevation: 0,
//         backgroundColor: Colors.green.shade400,
//         toolbarHeight: 250,
//         title: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
//           Padding(
//             padding: const EdgeInsets.only(top: 200, left: 0),
//             child: TextButton(
//               onPressed: () {},
//               child: const Text('Round Trip',
//                   style: TextStyle(color: Colors.white, fontSize: 20)),
//             ),
//           ),
//           const SizedBox(width: 100),
//           Padding(
//             padding: const EdgeInsets.only(top: 200, left: 30),
//             child: TextButton(
//               onPressed: () {},
//               child: Text('One Way',
//                   style: TextStyle(color: Colors.green.shade900, fontSize: 20)),
//             ),
//           )
//         ]),
//         actions: const [
//           Padding(
//             padding: EdgeInsets.fromLTRB(0, 150, 60, 0),
//             child: Expanded(
//                 child: Text('End',
//                     style: TextStyle(
//                       fontSize: 22,
//                       color: Colors.red,
//                     ))),
//           ),
//         ],
//       ),
//       body: Container(
//           width: MediaQuery.of(context).size.width,
//           decoration: const BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(40),
//               topRight: Radius.circular(40),
//             ),
//           )),
//     );
//   }

//   getbody() => ListView();
// }

// class infolist {
//   String title;
//   dynamic kala;
//   infolist({required this.title, this.kala});
// }

// class infolist1 {
//   String title;
//   dynamic kala;
//   infolist1({required this.title, this.kala});
// }

// class infolist3 {
//   String title;
//   dynamic kala;
//   infolist3({required this.title, this.kala});
// }

// class infolist4 {
//   String title;
//   dynamic kala;
//   infolist4({required this.title, this.kala});
// }
