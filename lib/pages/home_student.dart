import 'package:flutter/material.dart';
import 'package:student_tawsel_app/pages/chat_student.dart';
import 'package:student_tawsel_app/pages/studen_subject.dart';
import 'package:student_tawsel_app/pages/viewall_noticess_student.dart';

class HomeStudent extends StatelessWidget {
  HomeStudent({super.key});

  final List<String> subjectsimage = [
    "assets/Science.png",
    "assets/English.png",
    "assets/Arabic.png",
  ];

  final List<String> subjectname = [
    "Science",
    "English",
    "Arabic",
  ];

  final List<Map<String, String>> noticesliststudent = [
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Center(child: Image.asset("assets/Rect.png")),
                  const SizedBox(height: 10),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Subjects",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => StudenSubject(),
                            ));
                      },
                      child: const Text("View all",
                          style: TextStyle(
                            color: Color(0xff182243),
                            fontSize: 12,
                            decoration: TextDecoration.underline
                          ))),
                ],
              ),
            ),
            // Subjects Grid
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 160,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 1),
                itemCount: subjectsimage.length,
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          subjectsimage[index],
                          width: 100,
                          height: 70,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(height: 10),
                        Text(subjectname[index]),
                      ],
                    ),
                  );
                },
              ),
            ),
            // Notices Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Latest Notices",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ViewAllNoticestudent(),
                            ));
                      },
                      child: const Text("View all",
                          style: TextStyle(
                              color: Color(0xff182243),
                              fontSize: 12,
                              decoration: TextDecoration.underline))),
                ],
              ),
            ),
            // Notices List
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: noticesliststudent.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            noticesliststudent[index]['name']!,
                            style: const TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Colors.black),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            noticesliststudent[index]['subject teacher']!,
                            style: const TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                color: Colors.black),
                          ),
                          Text(
                            noticesliststudent[index]['subject name']!,
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
                                return const ChatStudent();
                              }));
                            },
                            child: Text(
                              noticesliststudent[index]["mss"]!,
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
                            noticesliststudent[index]["man"]!,
                            style: const TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                fontSize: 8,
                                color: Colors.black),
                          ),
                          Text(
                            noticesliststudent[index]["maan"]!,
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
      floatingActionButton: CircleAvatar(
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ChatStudent()),
            );
          },
          backgroundColor: const Color(0xff182243),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Image.asset("assets/chat _linesicon.png"),
        ),
      ),
    );
  }
}
