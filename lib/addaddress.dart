import 'package:flutter/material.dart';

class Addaddress extends StatelessWidget {
  const Addaddress({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> fields = [
      {"label": "Address", "hint": "Enter your address"},
      {"label": "City", "hint": "Chino Hills"},
      {"label": "State/Province/Region", "hint": "California"},
      {"label": "Zip Code (Postal Code)", "hint": "91709"},
      {"label": "Phone", "hint": "+996"},
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        backgroundColor: const Color(0xff182243),
        title: const Text(
          "Address",
          style: TextStyle(
              fontSize: 32,
              fontFamily: "Inter",
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
        centerTitle: true,
        toolbarHeight: 139,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: ListView.builder(
                itemCount: fields.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 4,
                    shape: const BeveledRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4))),
                    margin: const EdgeInsets.only(top: 20, left: 10, right: 10),
                    color: Colors.white,
                    child: TextFormField(
                      style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          fontFamily: "Tajawal",
                          color: Color(0xff2D2D2D)),
                      decoration: InputDecoration(
                        labelStyle: const TextStyle(
                            fontSize: 14,
                            fontFamily: "Tajawal",
                            color: Color(0xff9B9B9B)),
                        labelText: fields[index]['label'],
                        hintText: fields[index]['hint'],
                        border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(
                            Radius.circular(4),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
            child: SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  //iconColor: const Color(0xff182243),
                  // ignore: prefer_const_constructors
                  backgroundColor: Color(0xff182243),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  "SAVE ADDRESS",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
