import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:student_tawsel_app/pages/settings.dart';

class AppBarwidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(22),
          bottomRight: Radius.circular(22),
        ),
      ),
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
      actions: [
        Padding(
          padding: const EdgeInsets.all(14.0),
          child: InkWell(
            onTap: () {
              Get.to(() => Settings());
            },
            child: Image.asset("assets/icon _settings.png"),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(139);
}
