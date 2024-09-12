import 'package:flutter/material.dart';

class Mohsettings extends StatelessWidget {
  Mohsettings({super.key});

  final List mohsettingsTable = [
    "Address",
    "Children",
    "Cart",
    "Change Password",
  ];

  final List mohicon = [
    "assets/My Profile.png",
    "assets/icongroup.png",
    "assets/cardicon.png",
    "assets/edit pencil.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(22),
          bottomRight: Radius.circular(22),
        )),
        backgroundColor: const Color(0xff182243),
        toolbarHeight: 139,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            CircleAvatar(
              radius: 40,
              backgroundColor: Colors.grey[300],
              backgroundImage: const AssetImage("assets/boy.png"),
            ),
            const SizedBox(width: 15),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Mohammed",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Mohammed@gmail.com",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(9.0),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
              itemCount: mohsettingsTable.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundColor: const Color(0xff182243),
                    child: Image.asset(
                      mohicon[index],
                    ),
                  ),
                  title: Text(
                    mohsettingsTable[index],
                  ),
                  trailing: Image.asset("assets/Chevron.png"),
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
