import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xffF6F6F6)),
        useMaterial3: true,
      ),
      home: firstScreen(),
    );
  }
}

class firstScreen extends StatelessWidget {
  const firstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff182243),
        title: Text(
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
        padding: EdgeInsets.all(16.0),
        children: [
          buildChatItem(
              'assets/avatar.png', 'MR : Adel', 'Science Teacher', '25 Mar'),
          buildChatItem(
              'assets/avatar.png', 'MR : Jasem', 'Math Teacher', '24 Mar'),
          buildChatItem(
              'assets/avatar.png', 'MR : Ahmed', 'Science Teacher', '24 Mar'),
        ],
      ),
    );
  }

  Widget buildChatItem(
      String avatarPath, String name, String profession, String date) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.0),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Color(0XFFF6F6F6),
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
          ),
        ],
      ),
      child: Row(
        children: [
          Column(
            children: [
              CircleAvatar(
                radius: 30.0,
                backgroundImage: AssetImage(avatarPath),
              ),
              SizedBox(height: 8.0),
              Text(
                name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
            ],
          ),
          SizedBox(width: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  profession,
                  style: TextStyle(
                    //color:Color(0fxxD9D9D9),
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(height: 40.0),
                Text(
                  date,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
