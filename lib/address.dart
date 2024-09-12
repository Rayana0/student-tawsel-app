import 'package:flutter/material.dart';

class AddressPage extends StatelessWidget {
  const AddressPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> addresses = [
      {
        "address": "3 Newbridge Court, Chino Hills, CA 91709",
        "isDefault": true
      },
      {"address": "5 Oak Street, Los Angeles, CA 90001", "isDefault": false},
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
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: addresses.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            margin: const EdgeInsets.only(bottom: 16),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // زر Edit في جهة اليمين
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox.shrink(), // يجعل الزر يبدأ من الجهة اليمنى
                      TextButton(
                        onPressed: () {
                          // Action to edit address
                        },
                        child: const Text(
                          "Edit",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8), // مسافة بعد الزر

                  // النص الخاص بالعنوان
                  Text(
                    addresses[index]['address'],
                    style: const TextStyle(
                      fontSize: 14,
                      fontFamily: "Tajawal",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 8), // مسافة سطر بعد العنوان

                  // Checkbox مع النص الخاص به
                  Row(
                    children: [
                      Checkbox(
                        value: addresses[index]['isDefault'],
                        onChanged: (bool? value) {
                          // Action when checkbox is checked/unchecked
                        },
                      ),
                      const Text(
                        "Use as the shipping address",
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: "Tajawal",
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: CircleAvatar(
        child: FloatingActionButton(
          onPressed: () {
            // Action to add a new address
          },
          backgroundColor: Colors.black,
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
