// ignore_for_file: camel_case_types
import 'package:backend/login.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'new_password_add.dart';
import 'register.dart';

// void main() {
//   runApp(const MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: passwordScreen(),
//   ));
// }

class passwordScreen extends StatefulWidget {
  const passwordScreen({Key? key}) : super(key: key);

  @override
  State<passwordScreen> createState() => _passwordScreenState();
}

class _passwordScreenState extends State<passwordScreen> {
  final passwordresetController = TextEditingController();
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.white,
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: SizedBox(
                child: Column(
              children: [
                const Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 60, bottom: 20),
                    child: Icon(
                      Icons.lock,
                      color: Colors.black12,
                      size: 60,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 40),
                  child: Text(
                    'Forgot password?',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        fontWeight: FontWeight.w300),
                  ),
                ),
                const Text(
                  'We just need your registered email address',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.w300),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 50),
                  child: Text(
                    'to sent you password reset',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.w300),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: ListTile(
                    leading: const Icon(
                      CupertinoIcons.person_solid,
                      size: 40,
                      color: CupertinoColors.systemGrey,
                    ),
                    title: Form(
                        child: Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: SizedBox(
                        height: 80,
                        child: TextFormField(
                          enableInteractiveSelection: true,
                          autocorrect: true,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            labelText: 'Email',
                            // errorText: 'enter a correct Email Address',
                            prefixIcon:
                                Icon(Icons.email, color: Colors.amber.shade400),
                            prefixIconColor: Colors.brown,
                          ),
                          textInputAction: TextInputAction.done,
                          keyboardType: TextInputType.emailAddress,
                          controller: passwordresetController,
                          validator: (ifemail) =>
                              !EmailValidator.validate(ifemail!)
                                  ? 'Enter a valid email'
                                  : null,
                        ),
                      ),
                    )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 15, bottom: 20, top: 30),
                  child: SizedBox(
                    height: 45,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const newPassword()));

                          //if email address passes,i.e in data base then...navigate to newPassword screen
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: CupertinoColors.systemOrange),
                        child: const Text(
                          'Submit',
                          style: TextStyle(
                              color: CupertinoColors.white, fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 15, bottom: 50, top: 30),
                  child: SizedBox(
                    height: 45,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const Accessscreen()));

                          //if email address passes,i.e in data base then...navigate to newPassword screen
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff438A5E)),
                        child: const Text(
                          "Different User 'Log in'",
                          style: TextStyle(
                              color: CupertinoColors.white, fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 0),
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        // height: 70,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blueAccent),
                          color: const Color(0xff438A5E),
                        ),
                        child: ListView(children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 60),
                            child: Center(
                              child: Text(
                                "DON'T HAVE AN ACCOUNT?",
                                style: TextStyle(
                                    color: CupertinoColors.systemGrey3,
                                    fontSize: 18),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 25),
                            child: TextButton(
                              onPressed: (() => Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const RegisterScreen()))),
                              child: const Text(
                                'REGISTER',
                                style: TextStyle(
                                    color: CupertinoColors.white, fontSize: 23),
                              ),
                            ),
                          ),
                        ])),
                  ),
                )
              ],
            )),
          )
        ],
      ),
    );
  }
}
