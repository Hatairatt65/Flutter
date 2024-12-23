import 'package:flutter/material.dart';

void main() {
  var app = MaterialApp(
    title: "WEBTEST",
    home: Scaffold(
      appBar: AppBar(
        title: Text(
          "WEBTEST",
          style: TextStyle(
            color: Colors.white, // กำหนดสีข้อความเป็นสีขาว
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 238, 168, 191), // ตั้งสี AppBar เป็นสีชมพู
      ),
      body: SingleChildScrollView( // ทำให้สามารถเลื่อนดูได้หากเนื้อหามีมาก
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // ทำให้ข้อความทุกอันชิดซ้าย
          children: [
            // รูปภาพอยู่กลาง
            Center(
              child: Image(
                width: 300,
                image: AssetImage("assets/images/M1.jpg"),
              ),
            ),
            Row(  // ใช้ Row widget เพื่อแสดงข้อความในบรรทัดเดียว
              mainAxisAlignment: MainAxisAlignment.center, // จัดกลางข้อความในแนวนอน
              children: [
                Text(
                  "Hatairat",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.pink,
                  ),
                ),
                Text(
                  "  Titnam",
                  style: TextStyle(
                    fontSize: 18,
                    color: const Color.fromARGB(255, 173, 69, 214),
                  ),
                ),
                Text(
                  "  Kaimook",
                  style: TextStyle(
                    fontSize: 18,
                    color: const Color.fromARGB(255, 7, 160, 231),
                  ),
                ),
              ],
            ),
            // ข้อความที่ชิดซ้าย
            Divider(thickness: 2),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, // ทำให้ข้อความชิดซ้าย
                children: [
                  Text("Hobby: play game Nikki, raising a cat"),
                  Text("Food: steak, KFC, Shabu"),
                  Text("Birthplace : Sukhothai"),
                ],
              ),
            ),
            Divider(thickness: 2),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Education:",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,  // ตัวหนา
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, // ทำให้ข้อความชิดซ้าย
                children: [
                  Text("Elementary : Rojanawit School       Year : 53"),
                  Text("Primary : Janokrong School          Year : 59"),
                  Text("High School : Janokrong School      Year : 62"),
                  Text("Undergrad : Naresuan University     Year : 65"),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
  runApp(app);
}
