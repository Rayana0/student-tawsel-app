import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        backgroundColor: const Color(0xff182243),
        title: const Text(
          "Chat",
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        toolbarHeight: 139,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          buildChatItem(
              "assets/boy.png", 'MR : Adel', 'Science Teacher', '25 Mar'),
          buildChatItem(
              "assets/boy.png", 'MR : Jasem', 'Math Teacher', '24 Mar'),
          buildChatItem(
              "assets/boy.png", 'MR : Ahmed', 'Science Teacher', '24 Mar'),
        ],
      ),
    );
  }

  Widget buildChatItem(
      String avatarPath, String name, String profession, String date) {
    return Row(
      children: [
        Column(
          children: [
            CircleAvatar(
              radius: 40,
              backgroundColor: Colors.grey[300],
              backgroundImage: AssetImage(avatarPath),
            ),
            const SizedBox(height: 8.0),
            Text(
              name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
          ],
        ),
        const SizedBox(width: 16.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                profession,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
              const SizedBox(height: 40.0),
              Text(
                date,
                style: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
