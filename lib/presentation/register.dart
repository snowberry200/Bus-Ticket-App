import 'package:backend/presentation/passwordreset.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:email_validator/email_validator.dart';

// void main() {
//   runApp(
//     const MaterialApp(
//         debugShowCheckedModeBanner: false, home: RegisterScreen()),
//   );
// }

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  String dobInfo = 'date of birth must be in this format MM/DD/YYYY';
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  final passwordController = TextEditingController();

  //final cityController = TextEditingController();

  final dobController = TextEditingController();

  final emailController = TextEditingController();

  final firstnameController = TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  final lastnameController = TextEditingController();

  final numberController = TextEditingController();

  final stateController = TextEditingController();

  RegExp firstName = RegExp(r'([A-Z]{1}[a-z]{2,}?)');
  bool firstNameValid(String first) {
    String firstname = first.trim();
    if (firstName.hasMatch(firstname)) {
      return true;
    } else {
      return false;
    }
  }

  RegExp lastName = RegExp(r'([A-Z]{1}[a-z]{2,}?)');
  bool lastNameValid(String last) {
    String lastname = last.trim();
    if (lastName.hasMatch(lastname)) {
      return true;
    } else {
      return false;
    }
  }

  RegExp dob = RegExp(r'([0-9]{2}\/[0-9]{2}\/[0-9]{4}?)');
  bool dateofBirth(String doB) {
    if (dob.hasMatch(doB)) {
      return true;
    } else {
      return false;
    }
  }

  RegExp state = RegExp(r'([A-Z]{1}[a-z]{3,}?)');
  bool stateValid(String stateV) {
    if (state.hasMatch(stateV)) {
      return true;
    } else {
      return false;
    }
  }

  RegExp telValid = RegExp(r'([0-9]{10}?)');
  bool validateTelephone(String tell) {
    String telephone = tell.trim();
    if (telValid.hasMatch(telephone)) {
      return true;
    } else {
      return false;
    }
  }

  RegExp passValid = RegExp(r"(?=.*\d{2,4})(?=.*[A-Z])(?=.*\W)");
  bool passwordValidate(String pass) {
    String password = pass.trim();
    if (passValid.hasMatch(password)) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CupertinoColors.extraLightBackgroundGray,
        body: Column(children: [
          Container(
            width: MediaQuery.of(context).size.width,
            color: const Color(0xff438A5E),
            child: Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: TextButton(
                        onPressed: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => const passwordScreen())),
                        child: const Icon(
                          CupertinoIcons.back,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    buidinglogolid(),
                    buildcontainer1(),
                    buidinglogobottom(),
                  ]),
            ),
          ),
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
              child: ScrollConfiguration(
                behavior:
                    ScrollConfiguration.of(context).copyWith(scrollbars: false),
                child: SingleChildScrollView(
                  child: Card(
                    color: CupertinoColors.extraLightBackgroundGray,
                    shadowColor: Colors.black,
                    shape: const BeveledRectangleBorder(
                        side: BorderSide(
                            color: Colors.amberAccent,
                            width: 2,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    borderOnForeground: true,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        (const Padding(
                          padding: EdgeInsets.only(bottom: 10, top: 20),
                          child: Center(
                            child: Text('Registration',
                                style: TextStyle(
                                    fontSize: 28,
                                    color: CupertinoColors.darkBackgroundGray)),
                          ),
                        )),
                        const Divider(
                          color: CupertinoColors.lightBackgroundGray,
                          thickness: 1,
                          indent: 2,
                          height: 0,
                        ),
                        Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Form(
                                key: _formkey,
                                child: Column(children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    child: SizedBox(
                                      width: 300,
                                      child: TextFormField(
                                        autovalidateMode:
                                            AutovalidateMode.onUserInteraction,
                                        controller: firstnameController,
                                        decoration: InputDecoration(
                                            hintText: 'first name',
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10))),
                                        keyboardType: TextInputType.name,
                                        textCapitalization:
                                            TextCapitalization.characters,
                                        textInputAction: TextInputAction.next,
                                        validator: (ifFirstName) {
                                          if (ifFirstName != null &&
                                              ifFirstName.length <= 3) {
                                            return 'Please enter correct name';
                                          }
                                          bool result =
                                              firstNameValid(ifFirstName!);
                                          if (result) {
                                            return null;
                                          } else {
                                            return 'first alphabet must be UPPERCASE';
                                          }
                                        },
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    child: SizedBox(
                                      width: 300,
                                      child: TextFormField(
                                          autovalidateMode: AutovalidateMode
                                              .onUserInteraction,
                                          controller: lastnameController,
                                          decoration: InputDecoration(
                                              hintText: 'last name',
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10))),
                                          keyboardType: TextInputType.name,
                                          textCapitalization:
                                              TextCapitalization.characters,
                                          textInputAction: TextInputAction.next,
                                          validator: (iflastname) {
                                            if (iflastname != null &&
                                                iflastname.length <= 3) {
                                              return 'Please enter correct name';
                                            }
                                            bool result =
                                                lastNameValid(iflastname!);
                                            {
                                              if (result) {
                                                return null;
                                              } else {
                                                return 'first alphabet must be UPPERCASE';
                                              }
                                            }
                                          }),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    child: SizedBox(
                                      width: 300,
                                      child: TextFormField(
                                          autovalidateMode: AutovalidateMode
                                              .onUserInteraction,
                                          controller: dobController,
                                          decoration: InputDecoration(
                                            hintText: 'dd/mm/year',
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            counterText: '',
                                          ),
                                          keyboardType: TextInputType.datetime,
                                          textCapitalization:
                                              TextCapitalization.characters,
                                          inputFormatters: [
                                            FilteringTextInputFormatter.allow(
                                                RegExp("[0-9/]")),
                                            LengthLimitingTextInputFormatter(
                                                10),
                                          ],
                                          textInputAction: TextInputAction.next,
                                          validator: (ifdob) {
                                            if (ifdob!.isEmpty) {
                                              return 'Enter Your Date of Birth';
                                            }
                                            bool result = dateofBirth(ifdob);
                                            if (result) {
                                              return null;
                                            } else {
                                              return dobInfo;
                                            }
                                          }),
                                    ),
                                  ),
                                  // Padding(
                                  //   padding: const EdgeInsets.symmetric(vertical: 10),
                                  //   child: SizedBox(
                                  //     width: 300,
                                  //     child: TextFormField(
                                  //         autovalidateMode:
                                  //             AutovalidateMode.onUserInteraction,
                                  //         controller: cityController,
                                  //         decoration: InputDecoration(
                                  //             hintText: 'city name',
                                  //             border: OutlineInputBorder(
                                  //                 borderRadius:
                                  //                     BorderRadius.circular(10))),
                                  //         keyboardType: TextInputType.name,
                                  //         textCapitalization:
                                  //             TextCapitalization.characters,
                                  //         textInputAction: TextInputAction.next,
                                  //         validator: (ifCity) {
                                  //           if (ifCity != null && ifCity.length < 3) {
                                  //             return 'Please enter correct city name';
                                  //           } else {
                                  //             return null;
                                  //           }
                                  //         }),
                                  //   ),
                                  // ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    child: SizedBox(
                                      width: 300,
                                      child: TextFormField(
                                          autovalidateMode: AutovalidateMode
                                              .onUserInteraction,
                                          controller: stateController,
                                          decoration: InputDecoration(
                                              hintText: 'state',
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10))),
                                          keyboardType: TextInputType.name,
                                          textCapitalization:
                                              TextCapitalization.characters,
                                          textInputAction: TextInputAction.next,
                                          validator: (ifstate) {
                                            if (ifstate!.isEmpty &&
                                                ifstate.length < 4) {
                                              return 'Please enter your State name';
                                            }
                                            bool result = stateValid(ifstate);
                                            if (result) {
                                              return null;
                                            } else {
                                              return 'enter a correct US State name ';
                                            }
                                          }),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    child: SizedBox(
                                      width: 300,
                                      child: TextFormField(
                                          autovalidateMode: AutovalidateMode
                                              .onUserInteraction,
                                          controller: numberController,
                                          maxLength: 10,
                                          decoration: InputDecoration(
                                              hintText: 'phone number',
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10))),
                                          keyboardType: TextInputType.number,
                                          inputFormatters: <TextInputFormatter>[
                                            FilteringTextInputFormatter
                                                .digitsOnly
                                          ],
                                          validator: (ifphone) {
                                            if (ifphone!.isEmpty) {
                                              return 'please enter phone number';
                                            }

                                            bool result =
                                                validateTelephone(ifphone);
                                            if (result) {
                                              return null;
                                            } else {
                                              return 'Please enter a correct Phone number';
                                            }
                                          }),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    child: SizedBox(
                                      width: 300,
                                      child: TextFormField(
                                        autovalidateMode:
                                            AutovalidateMode.onUserInteraction,
                                        controller: emailController,
                                        decoration: InputDecoration(
                                            hintText: 'email address',
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10))),
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        textCapitalization:
                                            TextCapitalization.characters,
                                        textInputAction: TextInputAction.next,
                                        validator: (ifemail) =>
                                            !EmailValidator.validate(ifemail!)
                                                ? 'Enter a valid email'
                                                : null,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    child: SizedBox(
                                      width: 300,
                                      child: TextFormField(
                                          autovalidateMode: AutovalidateMode
                                              .onUserInteraction,
                                          controller: passwordController,
                                          maxLength: 12,
                                          decoration: InputDecoration(
                                              hintText: 'password',
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10))),
                                          keyboardType: TextInputType.name,
                                          textCapitalization:
                                              TextCapitalization.characters,
                                          textInputAction: TextInputAction.next,
                                          validator: (password) {
                                            if (password!.isEmpty &&
                                                password.length < 6) {
                                              return 'Please enter password ';
                                            }
                                            bool result =
                                                passwordValidate(password);
                                            if (result) {
                                              return null;
                                            } else {
                                              return 'please enter correct password';
                                            }
                                          }),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 200,
                                    height: 40,
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.blueAccent,
                                          side: const BorderSide(
                                              color: Color.fromARGB(
                                                  255, 248, 238, 142),
                                              width: 2),
                                          shape: const BeveledRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10))),
                                          shadowColor: Colors.black,
                                        ),
                                        onPressed: () {
                                          debugPrint(
                                              'Email:${emailController.text}');
                                          debugPrint(
                                              'Password:${passwordController.text}');
                                          debugPrint(
                                              'Firstname:${firstnameController.text}');
                                          debugPrint(
                                              'Lastname:${lastnameController.text}');
                                          debugPrint(
                                              'DOB:${dobController.text}');
                                          // debugPrint('City:${cityController.text}');
                                          debugPrint(
                                              'state:${stateController.text}');
                                          debugPrint(
                                              'Phone:${numberController.text}');

                                          final form = formkey.currentState!;
                                          if (form.validate()) {
                                            const Text('You\'re good to go');
                                          }
                                        },
                                        child: const Padding(
                                          padding: EdgeInsets.all(10.0),
                                          child: Text('Submit'),
                                        )),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  const Divider(
                                    color: CupertinoColors.lightBackgroundGray,
                                    thickness: 1,
                                    indent: 2,
                                    height: 0,
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                ]))),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ]));
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
