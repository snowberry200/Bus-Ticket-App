// ignore_for_file: camel_case_types, avoid_print, file_names

import 'package:backend/presentation/seatContainer.dart';
import 'login.dart';
import 'package:flutter/material.dart';
import 'coachesScreen.dart';
import 'package:flutter/cupertino.dart';
// import 'package:backend/main.dart' as entrypoint;
// import 'package:flutter_web_plugins/flutter_web_plugins.dart';
// import 'package:backend/generated_plugin_registrant.dart';

// void main() {
//   runApp(
//     const MaterialApp(debugShowCheckedModeBanner: false, home: selectSeat()),
//   );
// }

class selectSeat extends StatefulWidget {
  const selectSeat({Key? key}) : super(key: key);

  @override
  State<selectSeat> createState() => _selectSeatState();
}

class _selectSeatState extends State<selectSeat> {
  final items = ['Accra', 'Kumasi', 'Tamale', 'WaleWale'];
  String? value = 'Kumasi';
  List seatNumber = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          toolbarHeight: 60,
          elevation: 0,
          backgroundColor: CupertinoColors.white,
          leading: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const coachesScreen()));
                },
                icon: const Icon(
                  CupertinoIcons.back,
                  color: CupertinoColors.black,
                )),
          ),
          title: const Text(
            'Select Seat',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w300,
                color: CupertinoColors.black),
          ),
        ),
        body: Container(
          margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            color: Color(
              0xff406B4A,
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(right: 20, top: 30),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: SizedBox(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: ListView(
                          children: [
                            buildlistview1(),
                            buildlistview2(),
                            buildlistview3(),
                            buildlistview4(),
                            buildlistview5(),
                            buildlistview6(),
                            buildlistview7(),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: SizedBox(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 45),
                                    child: SizedBox(
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(right: 15),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Align(
                                                alignment: Alignment.topLeft,
                                                child: Container(
                                                    width: 25,
                                                    height: 1.5,
                                                    color:
                                                        Colors.lightBlueAccent),
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                    right: 8, left: 10),
                                                child: CircleAvatar(
                                                    radius: 2,
                                                    backgroundColor:
                                                        Colors.red),
                                              ),
                                              Container(
                                                  width: 25,
                                                  height: 1.5,
                                                  color:
                                                      Colors.lightBlueAccent),
                                            ]),
                                      ),
                                    ),
                                  ),
                                  const Text(
                                    'EZiTICKET',
                                    style: TextStyle(
                                      fontFamily: 'CrimsonPro',
                                      textBaseline: TextBaseline.ideographic,
                                      color: CupertinoColors.white,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    textScaleFactor: 2.0,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 12),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Container(
                                                width: 25,
                                                height: 2,
                                                color: Colors.lightBlueAccent),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(
                                                right: 5, left: 5),
                                            child: CircleAvatar(
                                                radius: 5,
                                                backgroundColor: Colors.red),
                                          ),
                                          Container(
                                              width: 35,
                                              height: 2,
                                              color: Colors.lightBlueAccent),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                              width: 230,
                              height: 530,
                              decoration: const BoxDecoration(
                                color: Colors.black26,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  children: [
                                    const Text('VIP',
                                        style: TextStyle(
                                            color: CupertinoColors.white,
                                            fontSize: 18)),
                                    const Text('Select Seat',
                                        style: TextStyle(
                                            color: CupertinoColors.white,
                                            fontSize: 18)),
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          container1(),
                                          const Text('Selcted ',
                                              style: TextStyle(
                                                  color: CupertinoColors.white,
                                                  fontSize: 12)),
                                          container2(),
                                          const Text('Booked ',
                                              style: TextStyle(
                                                  color: CupertinoColors.white,
                                                  fontSize: 12)),
                                          container3(),
                                          const Text('Available ',
                                              style: TextStyle(
                                                  color: CupertinoColors.white,
                                                  fontSize: 12))
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text('A ',
                                              style: TextStyle(
                                                  color: CupertinoColors.black,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold)),
                                          Text('B ',
                                              style: TextStyle(
                                                  color: CupertinoColors.black,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold)),
                                          Text('C ',
                                              style: TextStyle(
                                                  color: CupertinoColors.black,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold)),
                                          Text('D ',
                                              style: TextStyle(
                                                  color: CupertinoColors.black,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold)),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          InkWell(
                                            onTap: () {},
                                            child: SeatContainer(
                                                seatState: 'booked',
                                                seat: 1,
                                                value: seatNumber,
                                                onTap: (seat) {
                                                  setState(() {
                                                    seatNumber.add(seat);
                                                  });
                                                }),
                                          ),
                                          InkWell(
                                            onTap: () {},
                                            child: SeatContainer(
                                                seatState: 'available',
                                                seat: 2,
                                                value: seatNumber,
                                                onTap: (seat) {
                                                  setState(() {
                                                    if (seatNumber
                                                        .contains(seat)) {
                                                      seatNumber.remove(seat);
                                                    } else {
                                                      seatNumber.add(seat);
                                                    }
                                                  });
                                                }),
                                          ),
                                          InkWell(
                                            onTap: () {},
                                            child: SeatContainer(
                                                seatState: 'booked',
                                                seat: 3,
                                                value: seatNumber,
                                                onTap: (seat) {
                                                  setState(() {
                                                    seatNumber.add(seat);
                                                  });
                                                }),
                                          ),
                                          InkWell(
                                            onTap: () {},
                                            child: SeatContainer(
                                                seatState: 'available',
                                                seat: 4,
                                                value: seatNumber,
                                                onTap: (seat) {
                                                  setState(() {
                                                    if (seatNumber
                                                        .contains(seat)) {
                                                      seatNumber.remove(seat);
                                                    } else {
                                                      seatNumber.add(seat);
                                                    }
                                                  });
                                                }),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            InkWell(
                                              onTap: () {},
                                              child: SeatContainer(
                                                  seatState: 'selected',
                                                  seat: 5,
                                                  value: seatNumber,
                                                  onTap: (seat) {
                                                    setState(() {
                                                      if (seatNumber
                                                          .contains(seat)) {
                                                        seatNumber.remove(seat);
                                                      } else {
                                                        seatNumber.add(seat);
                                                      }
                                                    });
                                                  }),
                                            ),
                                            InkWell(
                                              onTap: () {},
                                              child: SeatContainer(
                                                  seatState: 'available',
                                                  seat: 6,
                                                  value: seatNumber,
                                                  onTap: (seat) {
                                                    setState(() {
                                                      if (seatNumber
                                                          .contains(seat)) {
                                                        seatNumber.remove(seat);
                                                      } else {
                                                        seatNumber.add(seat);
                                                      }
                                                    });
                                                  }),
                                            ),
                                            InkWell(
                                              onTap: () {},
                                              child: SeatContainer(
                                                  seatState: 'available',
                                                  seat: 7,
                                                  value: seatNumber,
                                                  onTap: (seat) {
                                                    setState(() {
                                                      if (seatNumber
                                                          .contains(seat)) {
                                                        seatNumber.remove(seat);
                                                      } else {
                                                        seatNumber.add(seat);
                                                      }
                                                    });
                                                  }),
                                            ),
                                            InkWell(
                                              onTap: () {},
                                              child: SeatContainer(
                                                  seatState: 'booked',
                                                  seat: 8,
                                                  value: seatNumber,
                                                  onTap: (seat) {
                                                    setState(() {
                                                      seatNumber.add(seat);
                                                    });
                                                  }),
                                            ),
                                          ],
                                        )),
                                    Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          InkWell(
                                            onTap: () {},
                                            child: SeatContainer(
                                                seatState: 'booked',
                                                seat: 9,
                                                value: seatNumber,
                                                onTap: (seat) {
                                                  setState(() {
                                                    seatNumber.add(seat);
                                                  });
                                                }),
                                          ),
                                          InkWell(
                                            onTap: () {},
                                            child: SeatContainer(
                                                seatState: 'booked',
                                                seat: 10,
                                                value: seatNumber,
                                                onTap: (seat) {
                                                  setState(() {
                                                    seatNumber.add(seat);
                                                  });
                                                }),
                                          ),
                                          InkWell(
                                            onTap: () {},
                                            child: SeatContainer(
                                                seatState: 'booked',
                                                seat: 11,
                                                value: seatNumber,
                                                onTap: (seat) {
                                                  setState(() {
                                                    seatNumber.add(seat);
                                                  });
                                                }),
                                          ),
                                          InkWell(
                                            onTap: () {},
                                            child: SeatContainer(
                                                seatState: 'available',
                                                seat: 12,
                                                value: seatNumber,
                                                onTap: (seat) {
                                                  setState(() {
                                                    if (seatNumber
                                                        .contains(seat)) {
                                                      seatNumber.remove(seat);
                                                    } else {
                                                      seatNumber.add(seat);
                                                    }
                                                  });
                                                }),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            InkWell(
                                              onTap: () {},
                                              child: SeatContainer(
                                                  seatState: 'booked',
                                                  seat: 13,
                                                  value: seatNumber,
                                                  onTap: (seat) {
                                                    setState(() {
                                                      seatNumber.add(seat);
                                                    });
                                                  }),
                                            ),
                                            InkWell(
                                              onTap: () {},
                                              child: SeatContainer(
                                                  seatState: 'booked',
                                                  seat: 14,
                                                  value: seatNumber,
                                                  onTap: (seat) {
                                                    setState(() {
                                                      seatNumber.add(seat);
                                                    });
                                                  }),
                                            ),
                                            InkWell(
                                              onTap: () {},
                                              child: SeatContainer(
                                                  seatState: 'available',
                                                  seat: 15,
                                                  value: seatNumber,
                                                  onTap: (seat) {
                                                    setState(() {
                                                      if (seatNumber
                                                          .contains(seat)) {
                                                        seatNumber.remove(seat);
                                                      } else {
                                                        seatNumber.add(seat);
                                                      }
                                                    });
                                                  }),
                                            ),
                                            InkWell(
                                              onTap: () {},
                                              child: SeatContainer(
                                                  seatState: 'booked',
                                                  seat: 16,
                                                  value: seatNumber,
                                                  onTap: (seat) {
                                                    setState(() {
                                                      seatNumber.add(seat);
                                                    });
                                                  }),
                                            ),
                                          ],
                                        )),
                                    Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          InkWell(
                                            onTap: () {},
                                            child: SeatContainer(
                                                seatState: 'available',
                                                seat: 17,
                                                value: seatNumber,
                                                onTap: (seat) {
                                                  setState(() {
                                                    if (seatNumber
                                                        .contains(seat)) {
                                                      seatNumber.remove(seat);
                                                    } else {
                                                      seatNumber.add(seat);
                                                    }
                                                  });
                                                }),
                                          ),
                                          InkWell(
                                            onTap: () {},
                                            child: SeatContainer(
                                                seatState: 'available',
                                                seat: 18,
                                                value: seatNumber,
                                                onTap: (seat) {
                                                  setState(() {
                                                    if (seatNumber
                                                        .contains(seat)) {
                                                      seatNumber.remove(seat);
                                                    } else {
                                                      seatNumber.add(seat);
                                                    }
                                                  });
                                                }),
                                          ),
                                          InkWell(
                                            onTap: () {},
                                            child: SeatContainer(
                                                seatState: 'available',
                                                seat: 19,
                                                value: seatNumber,
                                                onTap: (seat) {
                                                  setState(() {
                                                    if (seatNumber
                                                        .contains(seat)) {
                                                      seatNumber.remove(seat);
                                                    } else {
                                                      seatNumber.add(seat);
                                                    }
                                                  });
                                                }),
                                          ),
                                          InkWell(
                                            onTap: () {},
                                            child: SeatContainer(
                                                seatState: 'booked',
                                                seat: 20,
                                                value: seatNumber,
                                                onTap: (seat) {
                                                  setState(() {
                                                    seatNumber.add(seat);
                                                  });
                                                }),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          InkWell(
                                            onTap: () {},
                                            child: SeatContainer(
                                                seatState: 'available',
                                                seat: 21,
                                                value: seatNumber,
                                                onTap: (seat) {
                                                  setState(() {
                                                    if (seatNumber
                                                        .contains(seat)) {
                                                      seatNumber.remove(seat);
                                                    } else {
                                                      seatNumber.add(seat);
                                                    }
                                                  });
                                                }),
                                          ),
                                          InkWell(
                                            onTap: () {},
                                            child: SeatContainer(
                                                seatState: 'available',
                                                seat: 22,
                                                value: seatNumber,
                                                onTap: (seat) {
                                                  setState(() {
                                                    if (seatNumber
                                                        .contains(seat)) {
                                                      seatNumber.remove(seat);
                                                    } else {
                                                      seatNumber.add(seat);
                                                    }
                                                  });
                                                }),
                                          ),
                                          InkWell(
                                            onTap: () {},
                                            child: SeatContainer(
                                                seatState: 'booked',
                                                seat: 23,
                                                value: seatNumber,
                                                onTap: (seat) {
                                                  setState(() {
                                                    seatNumber.add(seat);
                                                  });
                                                }),
                                          ),
                                          InkWell(
                                            onTap: () {},
                                            child: SeatContainer(
                                                seatState: 'booked',
                                                seat: 24,
                                                value: seatNumber,
                                                onTap: (seat) {
                                                  setState(() {
                                                    seatNumber.add(seat);
                                                  });
                                                }),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            buildCheckoutButtun(),
                          ]),
                    ),
                  ),
                ]),
          ),
        ));
  }

  // DropdownMenuItem<String> buildMenuItem(String Item) =>
  //     DropdownMenuItem(value: Item, child: Text(Item));

  buildlistview1() => const ListTile(
      title: Text(
        '(from)',
        style: TextStyle(
          color: Colors.white70,
        ),
      ),
      subtitle: Text(
        'Accra',
        style: TextStyle(color: CupertinoColors.white),
      ));
  buildlistview2() => const ListTile(
      title: Text(
        '(To)',
        style: TextStyle(
          color: Colors.white70,
        ),
      ),
      subtitle: Text(
        'Kumasi',
        style: TextStyle(color: CupertinoColors.white),
      ));
  buildlistview3() => const ListTile(
      title: Text(
        'Depart',
        style: TextStyle(
          color: Colors.white70,
        ),
      ),
      subtitle: Text(
        '8:30 Am',
        style: TextStyle(color: CupertinoColors.white),
      ));
  buildlistview4() => const ListTile(
      title: Text(
        'Bus No',
        style: TextStyle(
          color: Colors.white70,
        ),
      ),
      subtitle: Text(
        'GT 185 12',
        style: TextStyle(color: CupertinoColors.white),
      ));
  buildlistview5() => const ListTile(
      title: Text(
        'Traveler',
        style: TextStyle(
          color: Colors.white70,
        ),
      ),
      subtitle: Text(
        '1',
        style: TextStyle(color: CupertinoColors.white),
      ));
  buildlistview6() => ListTile(
      title: const Text(
        'Seat No',
        style: TextStyle(
          color: Colors.white70,
        ),
      ),
      subtitle: Text(
        seatNumber.toString(),
        style: const TextStyle(color: CupertinoColors.white),
      ));
  buildlistview7() => const ListTile(
      title: Text(
        'Ticket Price',
        style: TextStyle(
          color: Colors.white70,
        ),
      ),
      subtitle: Text(
        'GHS 60',
        style: TextStyle(
            color: CupertinoColors.white,
            fontSize: 20,
            fontWeight: FontWeight.w700),
      ));

  container1() => Container(
      width: 10,
      height: 15,
      decoration: (const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(3)),
        color: Colors.orangeAccent,
      )));
  container2() => Container(
      width: 10,
      height: 15,
      decoration: (const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(3)),
        color: Color(0xff406B4A),
      )));
  container3() => Container(
      width: 10,
      height: 15,
      decoration: (const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(3)),
        color: Colors.teal,
      )));

  container2Max() => Container(
      width: 20,
      height: 30,
      decoration: (const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(6)),
        color: Color(0xff406B4A),
      )));
  container3Max() => Container(
      width: 20,
      height: 30,
      decoration: (const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(6)),
        color: Colors.teal,
      )));

  buildCheckoutButtun() => Padding(
        padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
        child: Align(
          alignment: Alignment.center,
          child: Container(
            width: 230,
            height: 40,
            decoration: (BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.orange)),
            child: Align(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {
                  print('Checkout');
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Accessscreen()));
                },
                child: const Text(
                  'Checkout',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      );
}
