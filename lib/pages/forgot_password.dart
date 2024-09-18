import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            "Forgot password",
            style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                fontFamily: "Tajawal"),
          ),
          const SizedBox(height: 30),
          const Text("Please, enter your phone number",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  fontFamily: "Tajawal")),
          const SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
              ),
            ),
            child: TextFormField(
              decoration: const InputDecoration(
                prefixText: '+996 ',
                suffixIcon: Icon(Icons.clear, color: Colors.red),
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(10),
              ),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff182243),
              fixedSize: const Size(300, 55),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
              ),
            ),
            child: const Text(
              "SEND",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontFamily: "Inter",
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 30),
          const Text(
            "Please, enter OTP code",
            style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: "Tajawal",
                fontWeight: FontWeight.w300),
          ),
          const SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextFormField(
              decoration: const InputDecoration(
                prefixText: '2585  ',
                suffixIcon: Icon(Icons.check, color: Colors.green),
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(10),
              ),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff182243),
                fixedSize: const Size(300, 55),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                )),
            child: const Text(
              "LOGIN",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontFamily: "Inter",
                  fontWeight: FontWeight.bold),
            ),
          ),
        ]),
      ),
    );
  }
}
