// ignore_for_file: camel_case_types, avoid_print, annotate_overrides

import 'dart:async';
import 'package:backend/presentation/buyTicket.dart';
import 'package:backend/presentation/ticket.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'coachesScreen.dart';

class Confirmationscreen extends StatefulWidget {
  const Confirmationscreen({Key? key}) : super(key: key);

  @override
  _ConfirmationscreenState createState() => _ConfirmationscreenState();
}

class _ConfirmationscreenState extends State<Confirmationscreen> {
  bool checkboxvalue = false;

  void initState() {
    Timer(const Duration(milliseconds: 1000), () {
      setState(() {
        checkboxvalue = true;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.white,
      appBar: AppBar(
        centerTitle: false,
        toolbarHeight: 50,
        elevation: 0,
        backgroundColor: CupertinoColors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const BuyTicket()));
              },
              icon: const Icon(
                CupertinoIcons.clear,
                color: CupertinoColors.black,
              )),
        ),
        title: const Text(
          'Confirmation',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w300, color: Colors.black),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: Color(0xff438A5E),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Transform.scale(
                scale: 3.5,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 0),
                  child: Checkbox(
                      focusColor: Colors.transparent,
                      activeColor: Colors.white,
                      hoverColor: Colors.transparent,
                      checkColor: const Color(0xff438A5E),
                      shape: const CircleBorder(),
                      tristate: false,
                      value: checkboxvalue,
                      onChanged: (value) {
                        setState(() {
                          checkboxvalue = !checkboxvalue;
                        });
                      }),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 0, top: 0),
                child: Text(
                  'Done',
                  style: TextStyle(
                      fontSize: 20,
                      color: CupertinoColors.white,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const Text(
                'Your ticket purchase ',
                style: TextStyle(
                    fontSize: 20,
                    color: CupertinoColors.white,
                    fontWeight: FontWeight.w300),
              ),
              const Text('successfully completed',
                  style: TextStyle(
                      fontSize: 20,
                      color: CupertinoColors.white,
                      fontWeight: FontWeight.w300)),
              Expanded(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                  "https://d2kq0urxkarztv.cloudfront.net/5745e83ba0de566a7e4e6ea2/2738176/upload-c0f9e30e-1446-4839-8efd-3a87fecea33a.png?w=900&e=webp&nll=true&cX=1589&cY=297&cW=3964&cH=3430"),
                            ))),
                  ),
                ),
                flex: 1,
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 40,
                    decoration: (BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.orange)),
                    child: Align(
                      alignment: Alignment.center,
                      child: TextButton(
                        onPressed: () {
                          print('Download Ticket');
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const coachesScreen()));
                        },
                        child: const Text(
                          'Download Ticket',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 40,
                    decoration: (BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.green)),
                    child: Align(
                      alignment: Alignment.center,
                      child: TextButton(
                        onPressed: () {
                          print('Print Ticket');
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Ticket()));
                        },
                        child: const Text(
                          'Print Ticket',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
