import 'package:flutter/material.dart';
import 'package:student_tawsel_app/pages/chat.dart';

class NoticeCard extends StatelessWidget {
  final Map<String, String> notice;

  const NoticeCard({super.key, required this.notice});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              notice['name']!,
              style: const TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.black),
            ),
            const SizedBox(height: 10),
            Text(
              notice['subject teacher']!,
              style: const TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: Colors.black),
            ),
            Text(
              notice['subject name']!,
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
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const Chat();
                }));
              },
              child: Text(
                notice["mss"]!,
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
              notice["man"]!,
              style: const TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500,
                  fontSize: 8,
                  color: Colors.black),
            ),
            Text(
              notice["maan"]!,
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
  }
}
