// ignore_for_file: camel_case_types, avoid_print, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(
    const MaterialApp(debugShowCheckedModeBanner: false, home: Ticket()),
  );
}

class Ticket extends StatefulWidget {
  const Ticket({Key? key}) : super(key: key);

  @override
  _TicketState createState() => _TicketState();
}

class _TicketState extends State<Ticket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CupertinoColors.white,
        appBar: AppBar(backgroundColor: CupertinoColors.white, elevation: 0),
        body: Column(children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 20, bottom: 10, left: 20, right: 20),
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: 600,
                decoration: (BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey.shade100)),
                child: Column(
                  children: [
                    Container(
                      decoration: (const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          ),
                          color: Color(0xff438A5E))),
                      width: MediaQuery.of(context).size.width,
                      height: 80,
                      child: const Center(
                          child: Text(
                        '4489-92-XXX',
                        style: TextStyle(
                            color: CupertinoColors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      )),
                    ),
                    Container(
                        decoration:
                            (BoxDecoration(color: Colors.grey.shade100)),
                        width: MediaQuery.of(context).size.width,
                        height: 425,
                        child: Column(
                          children: [
                            builddetail1(),
                            Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(
                                      left: 20, bottom: 5, top: 10),
                                  child: CircleAvatar(
                                    radius: 5,
                                    backgroundColor:
                                        CupertinoColors.destructiveRed,
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(5, 10, 0, 5),
                                    child: Container(
                                        width: 100,
                                        height: 2,
                                        color: CupertinoColors.systemGrey3),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(
                                      left: 15, bottom: 5, top: 10, right: 20),
                                  child: CircleAvatar(
                                    radius: 5,
                                    backgroundColor:
                                        CupertinoColors.destructiveRed,
                                  ),
                                ),
                              ],
                            ),
                            builddetail2(),
                            builddetail4(),
                            builddetail5(),
                            builddetail6(),
                            builddetails7(),
                          ],
                        )),
                    Container(
                        decoration: (BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30),
                            ),
                            color: Colors.grey.shade50)),
                        width: MediaQuery.of(context).size.width,
                        height: 95,
                        child: Column(
                          children: [
                            builddetails8(),
                          ],
                        )),
                  ],
                )),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 250,
              height: 40,
              decoration: (BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.orange)),
              child: Align(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {
                    print('save');
                  },
                  child: const Text(
                    'save',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ]));
  }

  builddetail1() => (const ListTile(
        leading: Text('11:00'),
        trailing: Text('15:39'),
      ));
  builddetail2() => (const ListTile(
        leading: Text('Departure'),
        trailing: Text('Arrival'),
      ));
  builddetail3() => (const ListTile(
        title: Text('11:00'),
        trailing: Text('15:39'),
      ));
  builddetail4() => (ListTile(
      title: const Text('11:00'),
      subtitle: const Align(
          alignment: Alignment.bottomLeft, child: Text('12 Jan 2022')),
      trailing: Container(
          decoration: (const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Color(0xff91C483),
          )),
          width: 140,
          height: 40,
          child: const Center(
            child: Text(
              'Select 43',
              style: TextStyle(color: CupertinoColors.white),
            ),
          ))));
  builddetail5() => (ListTile(
      title: const Text('Passenger'),
      subtitle: const Align(
          alignment: Alignment.bottomLeft, child: Text('Dorcas A Akonobea')),
      trailing: Padding(
        padding: const EdgeInsets.only(right: 50),
        child: Container(
            decoration: (const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              color: Color(0xff91C483),
            )),
            width: 40,
            height: 40,
            child: const Center(
              child: Padding(
                padding: EdgeInsets.only(right: 30, left: 12),
                child: Text(
                  '+',
                  style: TextStyle(
                      color: CupertinoColors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 30),
                ),
              ),
            )),
      )));
  builddetail6() => (ListTile(
        title: const Text('ID:'),
        subtitle: const Align(
            alignment: Alignment.bottomLeft, child: Text('4489-92-XXX')),
        trailing: Padding(
            padding: const EdgeInsets.only(right: 50),
            child: Container(
              decoration: (const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Color(0xff91C483),
              )),
              width: 40,
              height: 40,
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.only(right: 30, left: 10),
                  child: Icon(
                    CupertinoIcons.pen,
                    color: CupertinoColors.black,
                    size: 30,
                  ),
                ),
              ),
            )),
      ));
  builddetails7() => (const ListTile(
        title: Text(
          'QRCODE',
          style: TextStyle(
              color: CupertinoColors.black,
              fontWeight: FontWeight.w400,
              fontSize: 10),
        ),
        subtitle: Align(
          alignment: Alignment.bottomLeft,
          child: Icon(
            CupertinoIcons.qrcode,
            size: 40,
          ),
        ),
      ));

  builddetails8() => Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                CupertinoIcons.barcode,
                color: CupertinoColors.black,
                size: 60,
              ),
              const Icon(
                CupertinoIcons.barcode,
                color: CupertinoColors.black,
                size: 60,
              ),
              const Icon(
                CupertinoIcons.barcode,
                color: CupertinoColors.black,
                size: 60,
              ),
            ],
          ),
          const Align(
              alignment: Alignment.center, child: Text('2463759468204776E0')),
        ],
      );

}
