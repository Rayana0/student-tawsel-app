import 'package:flutter/material.dart';

class Addresses extends StatelessWidget {
  const Addresses({super.key});

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
            margin: const EdgeInsets.only(bottom: 16),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox.shrink(), 
                      TextButton(
                        onPressed: () {
                         
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
                  const SizedBox(height: 8), 

                  
                  Text(
                    addresses[index]['address'],
                    style: const TextStyle(
                      fontSize: 14,
                      fontFamily: "Tajawal",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 8), 

                 
                  Row(
                    children: [
                      Checkbox(
                        activeColor: Colors.black,
                        value: addresses[index]['isDefault'],
                        onChanged: (bool? value) {
                         
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
          child: Image.asset("assets/pluusicon.png"),
        ),
      ),
    );
  }
}
