import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Tabletime extends StatelessWidget {
  Tabletime({super.key});

  final List tablelist = [
    {
      "name": "Science",
      "details": "Basic Of Science Ch 1",
      "class": "Class : 3",
      "time": "9:00 AM",
    },
    {
      "name": "Math",
      "details": "Intro Of Math Ch 2",
      "class": "Class : 3",
      "time": "10:00 AM",
    },
  ];
  List<String> daysofweek = [
    "Sun",
    "Mon",
    "Tue",
    "Wed",
    "Thu",
    "Fri",
    "Sat",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          backgroundColor: const Color(0xff182243),
          title: const Text(
            "Time Table",
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          toolbarHeight: 139,
        ),
        body: Column(
          children: [
            Row(
              textBaseline: TextBaseline.alphabetic,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 350,
                  height: 60,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: daysofweek.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 12),
                        child: daysofweek[index] == "Wed"
                            ? Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0, vertical: 0.0),
                                decoration: BoxDecoration(
                                  color: const Color(0xff182243),
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  daysofweek[index],
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Inter",
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            : Text(
                                daysofweek[index],
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Inter",
                                ),
                              ),
                      );
                    },
                  ),
                )
              ],
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: tablelist.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(
                          left: 17, right: 18, bottom: 30),
                      width: 355,
                      height: 117,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: const Color(0xffF6F6F6),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    tablelist[index]['name'],
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    tablelist[index]['details'],
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ]),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  tablelist[index]['class'],
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 33,
                                ),
                                Text(
                                  tablelist[index]['time'],
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            )
          ],
        ));
  }
}
