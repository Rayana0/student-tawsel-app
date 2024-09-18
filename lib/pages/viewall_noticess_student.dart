import 'package:flutter/material.dart';
import 'package:student_tawsel_app/pages/chat.dart';

class ViewAllNoticestudent extends StatelessWidget {
  ViewAllNoticestudent({super.key});

  final List noticesliststudent = [
    {
      "name": "MR :  Adel",
      "subject teacher": "Science Teacher",
      "subject name": "Ahmed",
      "mss": "Message",
      "man": "Management Education Serves ",
      "maan": "And Buses At Your Home",
    },
    {
      "name": "MR :  Jasem",
      "subject teacher": "Math Teacher",
      "subject name": "ALi",
      "mss": "Message",
      "man": "Management Education Serves ",
      "maan": "And Buses At Your Home",
    },
    {
      "name": "MR :  Adel",
      "subject teacher": "Science Teacher",
      "subject name": "Ahmed",
      "mss": "Message",
      "man": "Management Education Serves ",
      "maan": "And Buses At Your Home",
    },
    {
      "name": "MR :  Jasem",
      "subject teacher": "Math Teacher",
      "subject name": "Ali",
      "mss": "Message",
      "man": "Management Education Serves ",
      "maan": "And Buses At Your Home",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                  "Ahmed",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Image.asset("assets/icon _settings.png"),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset("assets/Rect.png")),
            const SizedBox(height: 15),
            const Text(
              "Latest Notices",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: noticesliststudent.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            noticesliststudent[index]['name'],
                            style: const TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Colors.black),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            noticesliststudent[index]['subject teacher'],
                            style: const TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                color: Colors.black),
                          ),
                          Text(
                            noticesliststudent[index]['subject name'],
                            style: const TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const Chat();
                              }));
                            },
                            child: Text(
                              noticesliststudent[index]["mss"],
                              style: const TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: Colors.black,
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            noticesliststudent[index]["man"],
                            style: const TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                fontSize: 8,
                                color: Colors.black),
                          ),
                          Text(
                            noticesliststudent[index]["maan"],
                            style: const TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                fontSize: 8,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
