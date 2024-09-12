import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  Settings({super.key});

  final List settingsTable = [
    "Profile",
    "Add Child",
    "Payment Methods",
    "Language",
    "Privacy Policy",
    "Contact Us",
    "Log Out",
  ];

  final List icon = [
    "assets/My Profile.png",
    "assets/icongroup.png",
    "assets/iconcreditcard.png",
    "assets/icon language_.png",
    "assets/iconverified.png",
    "assets/iconphone.png",
    "assets/iconlogout.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        backgroundColor: const Color(0xff182243),
        title: const Text(
          "Settings",
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        toolbarHeight: 139,
      ),
      body: Padding(
        padding: const EdgeInsets.all(9.0),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount: settingsTable.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundColor: const Color(0xff182243),
                          child: Image.asset(icon[index]),
                        ),
                        //Image.asset(icon[index]),
                        title: Text(
                          settingsTable[index],
                        ),
                        trailing: Image.asset("assets/Chevron.png"),
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
