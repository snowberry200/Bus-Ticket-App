import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'buyTicket.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(
      DevicePreview(
        enabled: true,
        builder: (context) => MaterialApp(
            useInheritedMediaQuery: true,
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
            debugShowCheckedModeBanner: false,
            home: const Eziticket()), // Wrap your app
      ),
    );

class Eziticket extends StatefulWidget {
  const Eziticket({Key? key}) : super(key: key);

  @override
  _EziticketState createState() => _EziticketState();
}

class _EziticketState extends State<Eziticket> {
  @override
  void initState() {
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (BuildContext context) => 
      const BuyTicket()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF91C483),
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: const Color(0xff438A5E),
        child: Padding(
          padding: const EdgeInsets.only(top: 350),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            buidinglogolid(),
            buildcontainer1(),
            buidinglogobottom(),
          ]),
        ),
      ),
    );
  }

  buildcontainer1() => const Padding(
        padding: EdgeInsets.only(top: 0, bottom: 0, left: 25),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            'EZiTICKET',
            style: TextStyle(
              fontFamily: 'CrimsonPro',
              textBaseline: TextBaseline.ideographic,
              color: CupertinoColors.white,
              fontWeight: FontWeight.w500,
            ),
            textScaleFactor: 4.0,
          ),
        ),
      );

  buildcontainer2() => Expanded(
        child: AnimatedContainer(

            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1510192111633-a6807b90a8f1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8cG9zdGNhcmR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'),
              ),
            ),
            duration: const Duration(seconds: 4)),
      );
  buidinglogobottom() => Padding(
        padding: const EdgeInsets.only(top: 0, bottom: 10, left: 35),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(width: 70, height: 2, color: Colors.lightBlueAccent),
              const Padding(
                padding: EdgeInsets.only(left: 8, right: 0),
                child: CircleAvatar(radius: 10, backgroundColor: Colors.red),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                    width: 100, height: 2, color: Colors.lightBlueAccent),
              ),
            ],
          ),
        ),
      );

  buidinglogolid() => SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Container(
                      width: 58, height: 2, color: Colors.lightBlueAccent),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 3, right: 10),
                child: CircleAvatar(
                    radius: 7, backgroundColor: CupertinoColors.destructiveRed),
              ),
              Container(width: 100, height: 2, color: Colors.lightBlueAccent),
            ],
          ),
        ),
      );
}
