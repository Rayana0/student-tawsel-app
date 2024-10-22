import 'package:flutter/material.dart';
import '../widget/App_Bar_widget.dart';
import '../widget/view_all_noticedwidget.dart';

class ViewAllNotices extends StatelessWidget {
  ViewAllNotices({super.key});

  final List<Map<String, String>> noticeslist = [
    {
      "name": "MR :  Adel",
      "subject teacher": "Science Teacher",
      "subject name": "Ahmed",
      "mss": "Message",
      "man": "Management Education Serves",
      "maan": "And Buses At Your Home",
    },
    {
      "name": "MR :  Jasem",
      "subject teacher": "Math Teacher",
      "subject name": "Ali",
      "mss": "Message",
      "man": "Management Education Serves",
      "maan": "And Buses At Your Home",
    },
    {
      "name": "MR :  Adel",
      "subject teacher": "Science Teacher",
      "subject name": "Ahmed",
      "mss": "Message",
      "man": "Management Education Serves",
      "maan": "And Buses At Your Home",
    },
    {
      "name": "MR :  Jasem",
      "subject teacher": "Math Teacher",
      "subject name": "Ali",
      "mss": "Message",
      "man": "Management Education Serves",
      "maan": "And Buses At Your Home",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarwidget(),
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
            const SizedBox(height: 15),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: noticeslist.length,
                itemBuilder: (context, index) {
                  return NoticeCard(notice: noticeslist[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
