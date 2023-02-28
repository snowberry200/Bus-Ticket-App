// ignore_for_file: camel_case_types, unused_field, unnecessary_const, avoid_print

import 'dart:math';
import 'package:backend/confirmation.dart';
import 'package:backend/login.dart';
import 'package:backend/profileScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class checkoutscreen extends StatefulWidget {
  const checkoutscreen({Key? key}) : super(key: key);

  @override
  _checkoutscreenState createState() => _checkoutscreenState();
}

class _checkoutscreenState extends State<checkoutscreen> {
  final nameController = TextEditingController();
  final _myformkey = GlobalKey<FormState>();
  final cvvController = TextEditingController();
  final cardnumberController = TextEditingController();
  final dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.white,
      body: ListView(
        children: [
          Container(
            decoration: const BoxDecoration(color: CupertinoColors.white),
            height: 80.0,
            width: MediaQuery.of(context).size.width,
            child: ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: IconButton(
                    hoverColor: Colors.transparent,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Accessscreen()));
                    },
                    icon: const Icon(CupertinoIcons.back)),
              ),
              title: const Text(
                'Checkout',
                style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w300,
                    color: Colors.black),
              ),
              trailing: IconButton(
                hoverColor: Colors.transparent,
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Profile())),
                icon: const Icon(
                  CupertinoIcons.person,
                  size: 30,
                  color: CupertinoColors.activeBlue,
                ),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blueAccent),
              color: const Color(0xff438A5E),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: ListView(children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                child: Container(
                  height: 400,
                  decoration: const BoxDecoration(
                      color: CupertinoColors.white,
                      borderRadius: BorderRadius.all(Radius.circular(0))),
                  child: ListView(
                    children: [
                      buildrow(),
                      buildcardnumber(),
                      const Padding(
                        padding: EdgeInsets.only(left: 20, bottom: 10),
                        child: Text(
                          'name on card',
                          style: TextStyle(color: Colors.black12),
                        ),
                      ),
                      buildnameoncard(),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                        child: Text('Expiry date',
                            style: TextStyle(color: Colors.black12)),
                      ),
                      buildexpdate(),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                        child: Text('Security Code',
                            style: const TextStyle(color: Colors.black12)),
                      ),
                      buildcvc(),
                      const SizedBox(height: 20),
                      buildpaybuttun(),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                child: Container(
                  height: 400,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueAccent),
                      color: CupertinoColors.white,
                      borderRadius: const BorderRadius.all(Radius.circular(0))),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 40, 10),
                    child: ListView(
                      children: [
                        const Padding(
                          padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                          child: Text('Pay With Mobile Money'),
                        ),
                        ListTile(
                          leading: const CircleAvatar(
                            radius: 5,
                            backgroundColor: Colors.red,
                          ),
                          title: const Text('MTN'),
                          trailing: Container(
                              width: 100.0,
                              height: 50.0,
                              decoration: const BoxDecoration()),
                        ),
                        ListTile(
                            leading: const CircleAvatar(
                              radius: 5,
                              backgroundColor: Colors.red,
                            ),
                            title: const Text('Vodafone'),
                            trailing: Container(
                                width: 100.0,
                                height: 50.0,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                ))),
                        ListTile(
                            leading: const CircleAvatar(
                              radius: 5,
                              backgroundColor: Colors.red,
                            ),
                            title: const Text('Airtel/tigo'),
                            trailing: Container(
                                width: 100.0,
                                height: 50.0,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                ))),
                        const SizedBox(
                          height: 20,
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(20, 70, 0, 10),
                          child: Text(
                            'CALL:0262221268/0245981856',
                            style: TextStyle(
                                color: Colors.black45,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 0, 10),
                          child: const Text('FOR FURTHER ENQUIRIES',
                              style: const TextStyle(
                                  color: Colors.black45,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500)),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Align(
                            alignment: Alignment.center,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      CupertinoColors.systemOrange),
                              onPressed: () {
                                print('Proceed');
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Confirmationscreen()));
                              },
                              child: const Text(
                                'Proceed',
                                style: const TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }

  buildrow() => Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 30, 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: const [
                Icon(
                  CupertinoIcons.creditcard,
                  size: 25,
                  color: Colors.black12,
                ),
                SizedBox(
                  width: 20,
                ),
                Text('Credit card',
                    style: TextStyle(
                        color: Colors.black12,
                        fontSize: 20,
                        fontWeight: FontWeight.w300))
              ],
            ),
            Row(
              children: [
                Container(
                    width: 30.0,
                    height: 30.0,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                'data:image/png;base64,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')))),
                Container(
                    width: 30.0,
                    height: 30.0,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                'http://vertassets.blob.core.windows.net/image/042eb563/042eb563-1f95-4cfe-8da6-c65a9c8c74fe/mastercard_logo_svg.png')))),
              ],
            )
          ],
        ),
      );

  buildnameoncard() => Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 5),
        child: TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: nameController,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
            keyboardType: TextInputType.name,
            textCapitalization: TextCapitalization.characters,
            textInputAction: TextInputAction.next,
            validator: (ifEmpty) {
              if (ifEmpty != null && ifEmpty.length < 3) {
                return 'Please enter correct name';
              } else {
                return null;
              }
            }),
      );
  buildcardnumber() => Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 5),
        child: TextFormField(
            style: const TextStyle(
              fontWeight: FontWeight.w600,
            ),
            cursorWidth: max(2, 2),
            maxLength: 14,
            controller: cardnumberController,
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              fillColor: CupertinoColors.systemGrey5,
              suffixIcon: cardnumberController.text.isEmpty
                  ? Container(width: 0)
                  : IconButton(
                      hoverColor: Colors.transparent,
                      onPressed: () => cardnumberController.clear(),
                      icon: const Icon(Icons.clear),
                    ),
            ),
            textInputAction: TextInputAction.next,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly
            ],
            keyboardType: TextInputType.number,
            validator: (ifcc) {
              if (ifcc != null && ifcc.length <= 13) {
                return 'Please enter correct credit card number';
              } else {
                return null;
              }
            }),
      );
  buildexpdate() => Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 150, 5),
        child: TextFormField(
          cursorColor: Colors.teal,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
          ),
          cursorWidth: max(2, 2),
          controller: dateController,
          textInputAction: TextInputAction.next,
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.digitsOnly
          ],
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            fillColor: CupertinoColors.white,
            // prefixIcon:
            //     const Icon(CupertinoIcons.calendar, color: Colors.lightBlue),
            // prefixIconColor: Colors.brown,
            suffixIcon: cardnumberController.text.isEmpty
                ? Container(width: 0)
                : IconButton(
                    hoverColor: Colors.teal,
                    onPressed: () => cardnumberController.clear(),
                    icon: const Icon(Icons.clear),
                  ),
          ),
          keyboardType: TextInputType.datetime,
          validator: (ifexp) {
            if (ifexp != null && ifexp.length < 4) {
              return 'Please enter correct date';
            } else {
              return null;
            }
          },
        ),
      );
  buildcvc() => Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 150, 5),
        child: TextFormField(
          style: const TextStyle(
            fontWeight: FontWeight.w600,
          ),
          maxLength: 3,
          cursorWidth: max(2, 2),
          controller: cvvController,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            fillColor: CupertinoColors.white,
            // prefixIcon: const Icon(Icons.security, color: Colors.lightBlue),
            // prefixIconColor: Colors.brown,
          ),
          keyboardType: TextInputType.number,
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.digitsOnly
          ],
          validator: (ifcvv) {
            if (ifcvv != null && ifcvv.length < 3) {
              return 'Please enter correct Code';
            } else {
              return null;
            }
          },
        ),
      );

  buildpaybuttun() => Align(
      alignment: Alignment.center,
      child: Align(
          alignment: Alignment.center,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: CupertinoColors.systemOrange),
              child: const Text(
                'Pay 60 GHS',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Confirmationscreen()));
              })));
}
