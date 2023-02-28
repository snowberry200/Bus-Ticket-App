// ignore_for_file: unused_field, unnecessary_const, avoid_print, camel_case_types, file_names, annotate_overrides

import 'package:flutter/material.dart';
import 'coachesScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:date_field/date_field.dart';

class BuyTicket extends StatefulWidget {
  const BuyTicket({Key? key}) : super(key: key);

  @override
  _BuyTicketState createState() => _BuyTicketState();
}

class _BuyTicketState extends State<BuyTicket> {
  String? value;
  String? value1;
  String? value2;

  final items = ['1', '2', '3', '4', '5', '6', '7', '8', '10'];
  final froms = ['Accra', 'Kumasi', 'Takoradi', 'WaleWale'];
  final tos = ['Accra', 'Kumasi', 'Takoradi', 'WaleWale'];
  DateTime? selectedDate;
  final List<selectermodal> selector = [
    selectermodal(location: 'from', destination: 'to')
  ];

  final dateController = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 37, 70, 49),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 0, left: 0),
                child: Container(
                  decoration: const BoxDecoration(
                    image: const DecorationImage(
                        image: const NetworkImage(
                            "https://images.unsplash.com/photo-1602477423407-77e66791c353?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"),
                        fit: BoxFit.fill),
                  ),
                  height: 500.0,
                  width: MediaQuery.of(context).size.width,
                  child: const ListTile(
                    title: Center(
                      child: const Text(
                        'Buy Ticket',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    )),
                child: Padding(
                  padding: const EdgeInsets.only(top: 0),
                  child: ListView(children: [
                    ...selector.map(buildselctor).toList(),
                    ListTile(
                      leading: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          borderRadius: BorderRadius.circular(20),
                          menuMaxHeight: 200,
                          dropdownColor: CupertinoColors.white,
                          focusColor: CupertinoColors.white,
                          value: value1,
                          items: froms.map(buildFromItems).toList(),
                          onChanged: (value) =>
                              setState(() => this.value = value1),
                        ),
                      ),
                      trailing: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          borderRadius: BorderRadius.circular(20),
                          menuMaxHeight: 200,
                          dropdownColor: CupertinoColors.white,
                          focusColor: CupertinoColors.white,
                          value: value2,
                          items: tos.map(buildTosItems).toList(),
                          onChanged: (value) =>
                              setState(() => this.value = value2),
                        ),
                      ),
                    ),

                    // ...selecter1.map(buildselctor1).toList(),
                    const Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text('Depart', style: TextStyle(fontSize: 16)),
                        )),
                    departdate(),
                    const Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Align(
                        alignment: Alignment(-0.95, 0),
                        child: Text(
                          'Passengers',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),

                    SizedBox(
                        width: 100,
                        child: ListTile(
                          leading: const Padding(
                            padding: EdgeInsets.only(top: 18),
                            child: Icon(
                              Icons.person_add,
                              size: 28,
                            ),
                          ),
                          title: SizedBox(
                            width: 50,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(right: 225, top: 16),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                  borderRadius: BorderRadius.circular(20),
                                  menuMaxHeight: 200,
                                  dropdownColor: CupertinoColors.white,
                                  focusColor: CupertinoColors.white,
                                  value: value,
                                  items: items.map(buildMenuItems).toList(),
                                  onChanged: (value) =>
                                      setState(() => this.value = value),
                                ),
                              ),
                            ),
                          ),
                        )),

                    const Padding(
                      padding: EdgeInsets.only(left: 20, top: 10),
                      child: Text(
                        'Select bus type:',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black45,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    //for class (regular & business)
                    buildclass(),
                    const SizedBox(height: 30),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 50),
                        child: Container(
                          width: 250,
                          height: 40,
                          decoration: (BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.orange)),
                          child: Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                              width: 200,
                              height: 40,
                              child: TextButton(
                                onPressed: () {
                                  print('Proceed');
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const coachesScreen()));
                                },
                                child: const Text(
                                  'Search Coaches',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
              flex: 2,
            ),
          ],
        ));
  }

  DropdownMenuItem<String> buildFromItems(String froms) => DropdownMenuItem(
      alignment: Alignment.center,
      value: froms.toString(),
      child: Text(
        froms,
        style: const TextStyle(
            fontSize: 18,
            color: Color(0xff438A5E),
            fontWeight: FontWeight.w400),
      ));

  DropdownMenuItem<String> buildTosItems(String tos) => DropdownMenuItem(
      alignment: Alignment.center,
      value: tos.toString(),
      child: Text(
        tos,
        style: const TextStyle(
            fontSize: 18,
            color: Color(0xff438A5E),
            fontWeight: FontWeight.w400),
      ));

  DropdownMenuItem<String> buildMenuItems(String items) => DropdownMenuItem(
      alignment: Alignment.center,
      value: items.toString(),
      child: Text(
        items,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
      ));

  buildclass() => Padding(
        padding: const EdgeInsets.only(top: 10),
        child: ListTile(
          //when regular i selcted
          leading: TextButton(
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.only(left: 0),
              child: Text('Regular',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  )),
            ),
          ),
          //when Bussiness is selected
          trailing: TextButton(
              onPressed: () {},
              child: const Text(
                'Business',
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              )),
        ),
      );

  departdate() => Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          child: Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: DateTimeFormField(
                    decoration: const InputDecoration(
                      hintStyle: TextStyle(color: Colors.black45),
                      hintText: '05/05/22',
                      errorStyle: TextStyle(color: Colors.redAccent),
                      border: UnderlineInputBorder(),
                      prefixIcon: Icon(
                        Icons.event_note,
                        color: Colors.black54,
                      ),
                    ),
                    firstDate: DateTime.now().add(const Duration(days: 0)),
                    initialDate: DateTime.now().add(const Duration(days: 0)),
                    autovalidateMode: AutovalidateMode.always,
                    validator: (DateTime? e) =>
                        (e?.day ?? 0) == 1 ? 'Please not the first day' : null,
                    onDateSelected: (DateTime value) {
                      print(value);
                    },
                  ),
                ),
                flex: 1,
              ),
              const SizedBox(width: 30),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: DateTimeFormField(
                    decoration: const InputDecoration(
                        hintStyle: TextStyle(color: Colors.black45),
                        errorStyle: TextStyle(color: Colors.redAccent),
                        border: UnderlineInputBorder(),
                        prefixIcon: const Icon(Icons.event_note,
                            color: Colors.blueGrey),
                        labelText: 'Return'),
                    firstDate: DateTime.now().add(const Duration(days: 0)),
                    initialDate: DateTime.now().add(const Duration(days: 0)),
                    autovalidateMode: AutovalidateMode.always,
                    validator: (DateTime? e) =>
                        (e?.day ?? 0) == 1 ? 'Please not the first day' : null,
                    onDateSelected: (DateTime value) {
                      print(value);
                    },
                  ),
                ),
                flex: 1,
              ),
            ],
          ),
        ),
      );

  buildselctor(selectermodal selector) => ListTile(
      leading: Padding(
        padding: const EdgeInsets.only(left: 7),
        child: Text(selector.location,
            style: const TextStyle(
                color: CupertinoColors.systemRed, fontSize: 16)),
      ),
      trailing: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Text(selector.destination,
            style: const TextStyle(
                color: CupertinoColors.systemRed, fontSize: 16)),
      ));
}

buildselctor1(selectermodal1 selecter1) => ListTile(
      leading: Padding(
        padding: const EdgeInsets.only(left: 7),
        child: Text(
          selecter1.location1,
          style:
              const TextStyle(color: CupertinoColors.systemGreen, fontSize: 16),
        ),
      ),
      title: Icon(
        selecter1.title,
        size: 60,
        color: CupertinoColors.systemGrey5,
      ),
      trailing: Padding(
        padding: const EdgeInsets.only(right: 10, bottom: 15),
        child: Text(selecter1.destination1,
            style: const TextStyle(
                color: CupertinoColors.systemGreen, fontSize: 16)),
      ),
    );

class selectermodal {
  String location, destination;
  selectermodal({required this.location, required this.destination});
}

class selectermodal1 {
  String location1, destination1;
  IconData title;
  selectermodal1(
      {required this.location1,
      required this.destination1,
      required this.title});
}

class economymodal {
  IconData title, trailing;
  String text;
  economymodal(
      {required this.title, required this.text, required this.trailing});
}
