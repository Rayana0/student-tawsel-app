import 'package:flutter/material.dart';

class Testclass extends StatelessWidget {
  const Testclass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "D R A W E R",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple[300],
        elevation: 0,
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.share_rounded,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.person,
                color: Colors.white,
              ))
        ],
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.deepPurple[200],
          child: ListView(
            children: const [],
          ),
        ),
      ),
    );
  }
}
