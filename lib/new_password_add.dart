// ignore_for_file: camel_case_types

import 'package:backend/passwordreset.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: newPassword(),
  ));
}

class newPassword extends StatefulWidget {
  const newPassword({Key? key}) : super(key: key);

  @override
  State<newPassword> createState() => _newPasswordState();
}

class _newPasswordState extends State<newPassword> {
  final passwordController = TextEditingController();
  final confirmpasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff438A5E),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff438A5E),
        toolbarHeight: 150,
        leading: IconButton(
          icon: const Icon(
            CupertinoIcons.back,
            color: Colors.white70,
            size: 20,
          ),
          onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const passwordScreen())),
        ),
        title: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(right: 65),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                          width: 53, height: 2, color: Colors.lightBlueAccent),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 8, right: 8),
                      child:
                          CircleAvatar(radius: 8, backgroundColor: Colors.red),
                    ),
                    Container(
                        width: 100, height: 2, color: Colors.lightBlueAccent),
                  ],
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
                textScaleFactor: 2.5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 28, bottom: 10),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                          width: 53, height: 2, color: Colors.lightBlueAccent),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 8, right: 8),
                      child:
                          CircleAvatar(radius: 10, backgroundColor: Colors.red),
                    ),
                    Container(
                        width: 100, height: 2, color: Colors.lightBlueAccent),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          color: CupertinoColors.white,
          child: ListView(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 20, left: 20, bottom: 50),
                child: Text(
                  'Enter your new password below',
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'New Password',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Form(
                child: buildpasswoerd(),
              ),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'Confirm new password',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              confirmpassword(),
              const Padding(
                padding: EdgeInsets.fromLTRB(30, 20, 20, 20),
                child: Text(
                    "Hint: the password should be at-least 6 characters long. To make it stronger, use uppercase andlower case letters,numbers and symbols."),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 20, 20, 20),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: CupertinoColors.systemOrange),
                    onPressed: () {},
                    child: const Text('Reset Password')),
              )
            ],
          )),
    );
  }

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
  buildpasswoerd() => Padding(
        padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
        child: TextFormField(
          controller: passwordController,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: (pssword) {
            if (pssword!.isNotEmpty && pssword.length < 6) {
              return 'Please enter a correct password';
            } else {
              return null;
            }
          },
          maxLength: 12,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'password',
            prefixIcon: Icon(CupertinoIcons.lock),
          ),
        ),
      );
  confirmpassword() => Padding(
        padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
        child: TextFormField(
          controller: confirmpasswordController,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: (confirmpssword) {
            if (confirmpasswordController.text != passwordController.text) {
              return 'Your entries do not match';
            } else {
              return null;
            }
          },
          maxLength: 12,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'confirm password',
            prefixIcon: Icon(CupertinoIcons.lock),
          ),
        ),
      );
}
