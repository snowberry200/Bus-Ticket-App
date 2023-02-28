// ignore_for_file: camel_case_types, non_constant_identifier_names, avoid_unnecessary_containers, avoid_print, avoid_types_as_parameter_names, unused_field, file_names

import 'package:backend/sortingItems.dart/date.dart';
import 'package:backend/sortingItems.dart/price.dart';
import 'package:backend/sortingItems.dart/sortsettings.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'selectSeat.dart';
// import 'package:menu_button/menu_button.dart';

class coachesScreen extends StatefulWidget {
  const coachesScreen({Key? key}) : super(key: key);

  @override
  _coachesScreenState createState() => _coachesScreenState();
}

class _coachesScreenState extends State<coachesScreen> {
  final List<Busdetails> busdetail = [
    Busdetails(location: 'Accra', title: '2MEXPRESS', destination: 'Kumasi')
  ];
  final List<Busdetails> busdetail1 = [
    Busdetails(location: '8:30 AM', destination: 'GT 185 12')
  ];
  final List<Busdetails> busdetail2 = [
    Busdetails(
        title: 'Ticket price', subtitle: 'GHS 60', destination: 'Select Seat')
  ];
  //FOR 2ND container
  final List<Busdetails> secondbusdetail = [
    Busdetails(location: 'Accra', title: 'VIP', destination: 'Kumasi')
  ];
  final List<Busdetails> secondbusdetail1 = [
    Busdetails(location: '12:30 PM', destination: 'WR 125 21', title: '')
  ];
  final List<Busdetails> secondbusdetail2 = [
    Busdetails(
        subtitle: 'GHS 40', title: 'Ticket price', destination: 'Select Seat')
  ];
  //FOR 3RD Container

  final List<Busdetails> thirdbusdetail = [
    Busdetails(location: 'Accra', title: 'STC', destination: 'Kumasi')
  ];
  final List<Busdetails> thirdbusdetail1 = [
    Busdetails(location: '1:00pm', destination: 'KS 2212 20')
  ];
  final List<Busdetails> thirdbusdetail2 = [
    Busdetails(
        subtitle: 'GHS 50', title: 'Ticket price', destination: 'Select Seat')
  ];
  final _datecontroller = DatePickerController();
  DateTime _selectedValue = DateTime.now();
  @override
  void initState() {
    super.initState();
  }
//

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff438A5E),
        body: ListView(children: [
          Container(
            color: CupertinoColors.white,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    child: DatePicker(
                      DateTime.now(),
                      width: 60,
                      height: 85,
                      controller: _datecontroller,
                      initialSelectedDate: DateTime.now(),
                      selectionColor: const Color(0xff438A5E),
                      selectedTextColor: CupertinoColors.white,
                      monthTextStyle:
                          const TextStyle(color: CupertinoColors.systemRed),
                      daysCount: 356,
                      dayTextStyle: const TextStyle(color: Color(0xff91C483)),
                      inactiveDates: [
                        DateTime.now().add(const Duration(days: 3)),
                        DateTime.now().add(const Duration(days: 4)),
                        DateTime.now().add(const Duration(days: 7))
                      ],
                      onDateChange: (date) {
                        // New date selected
                        setState(() {
                          _selectedValue = date;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                color: Color(0xff438A5E),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                  padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
                  child: ListView(children: [
                    ListTile(
                      leading: const Text('Sort by:',
                          style: TextStyle(
                            fontSize: 18,
                            color: CupertinoColors.white,
                          )),
                      title: Align(
                        alignment: Alignment.topLeft,
                        child: PopupMenuButton<int>(
                            icon: const Padding(
                              padding: EdgeInsets.only(bottom: 1),
                              child: Icon(
                                Icons.arrow_drop_down,
                                color: CupertinoColors.white,
                                size: 30,
                              ),
                            ),
                            onSelected: (Item) => OnSelected(context, Item),
                            itemBuilder: (context) => [
                                  PopupMenuItem<int>(
                                    value: 0,
                                    child: Row(children: const [
                                      Icon(
                                        CupertinoIcons.money_dollar_circle,
                                        color: CupertinoColors.systemGrey2,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text('Price')
                                    ]),
                                  ),
                                  PopupMenuItem<int>(
                                    value: 1,
                                    child: Row(children: const [
                                      Icon(
                                        CupertinoIcons.calendar,
                                        color: CupertinoColors.systemGrey2,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text('Date')
                                    ]),
                                  ),
                                ]),
                      ),
                      trailing: IconButton(
                        icon: const Icon(CupertinoIcons.settings_solid,
                            color: CupertinoColors.white),
                        onPressed: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) =>
                                    const sortingSettingsScreen())),
                      ),
                    ),

                    const Padding(
                      padding: EdgeInsets.only(bottom: 10, left: 10),
                      child: Text('12 Buses Available Accra to Kumasi',
                          style: TextStyle(
                            fontSize: 18,
                            color: CupertinoColors.white,
                          )),
                    ),

                    //FIRST CONTAINER
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                      child: Container(
                        height: 335,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blueAccent),
                            color: CupertinoColors.white,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                        child: ListView(
                          children: [
                            ...busdetail.map(buildCoaches).toList(),
                            const ListTile(
                              leading: Padding(
                                padding: EdgeInsets.all(0.0),
                                child: Text(
                                  'Depart',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: CupertinoColors.systemGrey3),
                                ),
                              ),
                              trailing: Padding(
                                padding: EdgeInsets.all(0.0),
                                child: Text('Bus No',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: CupertinoColors.systemGrey3)),
                              ),
                            ),
                            ...busdetail1.map(buildCoaches1).toList(),
                            buildingrow(),
                            ...busdetail2.map(buildCoaches2).toList(),
                          ],
                        ),
                      ),
                    ),

                    //SECOND CONTAINER
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                      child: Container(
                        height: 335,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blueAccent),
                            color: CupertinoColors.white,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                        child: ListView(
                          children: [
                            ...secondbusdetail.map(buildSecondCoaches).toList(),
                            const ListTile(
                              leading: Text(
                                'Depart',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: CupertinoColors.systemGrey3),
                              ),
                              trailing: Text('Bus No',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: CupertinoColors.systemGrey3)),
                            ),
                            ...secondbusdetail1
                                .map(buildSecondCoaches1)
                                .toList(),
                            buildingrow(),
                            ...secondbusdetail2
                                .map(buildSecondCoaches2)
                                .toList(),
                          ],
                        ),
                      ),
                    ),
                    //Third CONTAINER

                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                      child: Container(
                        height: 340,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blueAccent),
                            color: CupertinoColors.white,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                        child: ListView(
                          children: [
                            ...thirdbusdetail.map(build3RDCoaches).toList(),
                            const ListTile(
                              leading: Text(
                                'Depart',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: CupertinoColors.systemGrey3),
                              ),
                              trailing: Text('Bus No',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: CupertinoColors.systemGrey3)),
                            ),
                            ...thirdbusdetail1.map(build3RDCoaches1).toList(),
                            buildingrow(),
                            ...thirdbusdetail2.map(build3RDCoaches2).toList(),
                          ],
                        ),
                      ),
                    ),
                  ])))
        ]));
  }

  buildCoaches(Busdetails busdetails) => ListTile(
        leading: Text(
          busdetails.location as String,
          style: const TextStyle(color: Color(0xff438A5E), fontSize: 16),
        ),
        title: Center(
            child: Text(busdetails.title as String,
                style: const TextStyle(
                    color: CupertinoColors.systemRed, fontSize: 16))),
        trailing: Text(
          busdetails.destination,
          style: const TextStyle(color: Color(0xff438A5E), fontSize: 16),
        ),
      );
  buildCoaches1(Busdetails busdetails1) => ListTile(
        leading: Text(
          busdetails1.location as String,
          style: const TextStyle(color: CupertinoColors.black, fontSize: 16),
        ),
        trailing: Text(
          busdetails1.destination,
          style: const TextStyle(color: CupertinoColors.black, fontSize: 16),
        ),
      );
  buildCoaches2(Busdetails busdetails2) => ListTile(
        title: Text(busdetails2.title as String,
            style: const TextStyle(
                color: CupertinoColors.systemGrey3, fontSize: 16)),
        subtitle: Text(
          busdetails2.subtitle as String,
          style: const TextStyle(color: Color(0xff438A5E), fontSize: 16),
        ),
        trailing: TextButton(
            child: Text(
              busdetails2.destination,
              style: const TextStyle(color: Color(0xff438A5E), fontSize: 16),
            ),
            onPressed: () {
              print('view details for 2MEXPRESS');
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const selectSeat()));
            }),
      );

//Building for 2nd CONTAINER

  buildSecondCoaches(Busdetails secondbusdetail) => ListTile(
        leading: Text(
          secondbusdetail.location as String,
          style: const TextStyle(color: Color(0xff438A5E), fontSize: 16),
        ),
        title: Center(
            child: Text(secondbusdetail.title as String,
                style: const TextStyle(
                    color: CupertinoColors.systemRed, fontSize: 16))),
        trailing: Text(secondbusdetail.destination,
            style: const TextStyle(color: Color(0xff91C483), fontSize: 16)),
      );
  buildSecondCoaches1(Busdetails secondbusdetails1) => ListTile(
        leading: Text(
          secondbusdetails1.location as String,
          style: const TextStyle(color: CupertinoColors.black, fontSize: 16),
        ),
        trailing: Text(
          secondbusdetails1.destination,
          style: const TextStyle(color: CupertinoColors.black, fontSize: 16),
        ),
      );
  buildSecondCoaches2(Busdetails secondbusdetail2) => Padding(
        padding: const EdgeInsets.only(bottom: 0, top: 0),
        child: ListTile(
          subtitle: Text(
            secondbusdetail2.subtitle as String,
            style: const TextStyle(color: Color(0xff438A5E), fontSize: 16),
          ),
          title: Text(secondbusdetail2.title as String,
              style: const TextStyle(
                  color: CupertinoColors.systemGrey3, fontSize: 16)),
          trailing: TextButton(
              child: Text(
                secondbusdetail2.destination,
                style: const TextStyle(color: Color(0xff438A5E), fontSize: 16),
              ),
              onPressed: () {
                print('Download Ticket');
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const selectSeat()));
              }),
        ),
      );

  //Building for 3rd CONTAINER

  build3RDCoaches(Busdetails thirdbusdetail) => Padding(
        padding: const EdgeInsets.only(bottom: 0, top: 0),
        child: ListTile(
          leading: Text(
            thirdbusdetail.location as String,
            style: const TextStyle(color: Color(0xff438A5E), fontSize: 16),
          ),
          title: Center(
            child: Text(thirdbusdetail.title as String,
                style: const TextStyle(
                    color: CupertinoColors.systemRed, fontSize: 16)),
          ),
          trailing: Text(
            thirdbusdetail.destination,
            style: const TextStyle(color: Color(0xff438A5E), fontSize: 16),
          ),
        ),
      );

  build3RDCoaches1(Busdetails thirdbusdetail1) => Padding(
        padding: const EdgeInsets.only(bottom: 0, top: 0),
        child: ListTile(
          leading: Text(
            thirdbusdetail1.location as String,
            style: const TextStyle(fontSize: 16),
          ),
          trailing: Text(
            thirdbusdetail1.destination,
            style: const TextStyle(fontSize: 16),
          ),
        ),
      );

  build3RDCoaches2(Busdetails thirdbusdetail2) => Padding(
        padding: const EdgeInsets.only(bottom: 0, top: 0),
        child: ListTile(
          title: Text(thirdbusdetail2.title as String),
          subtitle: Text(
            thirdbusdetail2.subtitle as String,
            style: const TextStyle(color: Color(0xff438A5E), fontSize: 16),
          ),
          trailing: TextButton(
            child: Text(
              thirdbusdetail2.destination,
              style: const TextStyle(color: Color(0xff438A5E), fontSize: 16),
            ),
            onPressed: () {
              print('Download Ticket');
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const selectSeat()));
            },
          ),
        ),
      );

  buildingrow() => Container(
        child: Row(children: [
          const Padding(
            padding: EdgeInsets.only(left: 15, bottom: 0, top: 5),
            child: CircleAvatar(
              radius: 5,
              backgroundColor: CupertinoColors.destructiveRed,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 5, 0, 0),
            child: Container(
                width: 100, height: 2, color: CupertinoColors.systemGrey3),
          ),
          const Padding(
              padding: EdgeInsets.fromLTRB(10, 5, 10, 40),
              child: Icon(CupertinoIcons.bus, size: 50, color: Colors.black45)),
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 5, 0, 0),
            child: Container(
                width: 100, height: 2, color: CupertinoColors.systemGrey3),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 15, bottom: 0, top: 5, left: 5),
            child: CircleAvatar(
              radius: 5,
              backgroundColor: CupertinoColors.systemGreen,
            ),
          ),
        ]),
      );

  void OnSelected(BuildContext, int Item) {
    switch (Item) {
      case 0:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const priceScreen()));
        break;
      case 1:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const dateScreen()));
        break;
    }
  }
}

class Busdetails {
  String destination;
  String? title, subtitle, location;
  Busdetails(
      {this.location, required this.destination, this.title, this.subtitle});
}
