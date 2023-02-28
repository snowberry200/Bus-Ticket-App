// ignore_for_file: non_constant_identifier_names, avoid_types_as_parameter_names, camel_case_types, file_names

import 'package:backend/buyTicket.dart';
import 'package:backend/settingsItems/complains.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'settingsItems/settings.dart';

void main() {
  runApp(
    const MaterialApp(debugShowCheckedModeBanner: false, home: Profile()),
  );
}

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final List<ItemSettings> menuItem1 = [
    ItemSettings(text: 'settings', icon: CupertinoIcons.settings)
  ];
  final List<ItemSettings> menuItem2 = [
    ItemSettings(text: 'complaints', icon: CupertinoIcons.pen)
  ];
  final List<ItemSettings> menuItem3 = [
    ItemSettings(text: 'log out', icon: Icons.logout)
  ];
  final List<infolist> Accountinfo = [
    infolist(
      color: Colors.red,
      title: 'Contact Us',
      trailiangicon: CupertinoIcons.forward,
      notification: CupertinoIcons.phone_solid,
    ),
    infolist(
      notification: CupertinoIcons.bookmark,
      color: Colors.red,
      title: 'Bookmark Ticket Page',
      trailiangicon: CupertinoIcons.forward,
    ),
    infolist(
      notification: Icons.credit_card,
      color: Colors.red,
      title: 'Transaction history',
      trailiangicon: CupertinoIcons.forward,
    ),
    infolist(
        notification: CupertinoIcons.profile_circled,
        color: Colors.red,
        title: 'Edit Profile',
        trailiangicon: CupertinoIcons.forward),
    infolist(
        notification: CupertinoIcons.star,
        color: Colors.red,
        title: 'Rate Us',
        trailiangicon: CupertinoIcons.forward),
  ];
  final List<infolist> notificationinfo = [
    infolist(
      notification: CupertinoIcons.bell,
      color: Colors.red,
      title: 'Notification',
      trailiangicon: CupertinoIcons.forward,
    )
  ];
  final List<infolist> otherinfo = [
    // infolist2(
    //   notification2: Icons.history,
    //   title2: 'Order History',
    //   trailiangicon2: CupertinoIcons.forward,
    // ),
    infolist(
      notification: CupertinoIcons.location,
      color: Null,
      title: 'Privacy Policy',
      trailiangicon: CupertinoIcons.forward,
    ),
    infolist(
        notification: Icons.logout,
        color: Null,
        title: 'Logout',
        trailiangicon: CupertinoIcons.forward)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff438A5E),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: CupertinoColors.white,
        toolbarHeight: 100,
        leading: IconButton(
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(
              CupertinoIcons.back,
              color: Colors.black,
            ),
          ),
        ),
        title: const Text(
          'MyProfile',
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w300,
              color: CupertinoColors.black),
        ),
        actions: [
          PopupMenuButton<int>(
              icon: const Icon(
                Icons.menu,
                color: CupertinoColors.black,
              ),
              onSelected: (Item) => OnSelcted(context, Item),
              itemBuilder: (context) => [
                    PopupMenuItem<int>(
                        value: 0,
                        child: Row(
                          children: const [
                            Icon(CupertinoIcons.settings,
                                color: CupertinoColors.systemGrey2),
                            SizedBox(width: 10),
                            Text('Settings'),
                          ],
                        )),
                    PopupMenuItem<int>(
                        value: 1,
                        child: Row(
                          children: const [
                            Icon(CupertinoIcons.pen,
                                color: CupertinoColors.systemGrey2),
                            SizedBox(width: 10),
                            Text('Complains'),
                          ],
                        )),
                    const PopupMenuDivider(),
                    PopupMenuItem<int>(
                        value: 2,
                        child: Row(
                          children: const [
                            Icon(
                              Icons.logout,
                              color: CupertinoColors.systemRed,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Log Out',
                              style:
                                  TextStyle(color: CupertinoColors.systemRed),
                            ),
                          ],
                        ))
                  ])
        ],
      ),
      body: ListView(
        children: [
          Container(
            margin:
                const EdgeInsets.only(top: 30, bottom: 10, left: 10, right: 10),
            height: 80,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.white,
            ),
            child: Column(children: const [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMlMD04BhdInujJMPpKegoDXrO2kqvkCn7Lg&usqp=CAU"),
                    radius: 30,
                  ),
                  title: Text("Nana Akufo-Addo",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                ),
              ),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(20, 10, 0, 10),
                      child: Text(
                        'Account',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  ...Accountinfo.map(getaccountdetails).toList(),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(20, 10, 0, 10),
                      child: Text(
                        'Notification',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  ...notificationinfo.map(getnotificationdetails).toList(),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(20, 10, 0, 10),
                      child: Text(
                        'Other',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  ...otherinfo.map(getotherdetails).toList(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  getaccountdetails(infolist Accountinfo) => Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: ListTile(
            leading: Icon(
              Accountinfo.notification,
              color: Colors.red,
            ),
            title: Text(Accountinfo.title),
            trailing: IconButton(
                hoverColor: Colors.green.shade400,
                onPressed: () {},
                icon: Icon(Accountinfo.trailiangicon))),
      );

  getnotificationdetails(infolist notificationinfo) => Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: ListTile(
            leading: IconButton(
              onPressed: () {},
              icon: Icon(
                notificationinfo.notification,
                color: Colors.red,
              ),
            ),
            title: Text(notificationinfo.title),
            trailing: IconButton(
                splashColor: Colors.green.shade400,
                onPressed: () {},
                icon: Icon(notificationinfo.trailiangicon))),
      );
  getotherdetails(infolist otherinfo) => ListTile(
      leading: TextButton(
        onPressed: () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => const BuyTicket())),
        child: Icon(
          otherinfo.notification,
          color: Colors.red,
        ),
      ),
      title: Text(otherinfo.title),
      trailing: IconButton(
          hoverColor: Colors.green.shade400,
          onPressed: () {},
          icon: Icon(otherinfo.trailiangicon)));

  PopUpMenuItem<buildmenuItem1>(ItemSettings menuItem) => ListTile(
        leading: Text(menuItem.text),
        title: Icon(menuItem.icon),
      );
  buildmenuItem2(ItemSettings menuItem2) => ListTile(
        leading: Text(menuItem2.text),
        title: Icon(menuItem2.icon),
      );
  buildmenuItem3(ItemSettings menuItem3) => ListTile(
        leading: Text(menuItem3.text),
        title: Icon(menuItem3.icon),
      );

  void OnSelcted(BuildContext, int Item) {
    switch (Item) {
      case 0:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const settingsScreen()));
        break;
      case 1:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const complainsScreen()));
        break;
      case 2:
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => const BuyTicket()),
            (route) => false);
    }
  }
}

class ItemSettings {
  String text;
  IconData icon;
  ItemSettings({required this.text, required this.icon});
}

class infolist {
  String title;
  dynamic color;
  IconData notification;
  final IconData trailiangicon;

  void getAge() {}

  infolist(
      {required this.title,
      required this.notification,
      required this.color,
      required this.trailiangicon});
}
