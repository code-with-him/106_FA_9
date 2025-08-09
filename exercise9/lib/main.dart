import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Column and Row Layout',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
        ),
        
        
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildBox(Colors.red, '1'),
                SizedBox(width: 16),
                buildBox(Colors.green, '2'),
                SizedBox(width: 16),
                buildBox(Colors.blue, '3'),
              ],
            ),
            SizedBox(height: 30),
            
            
            Container(
              padding: EdgeInsets.all(20),
              color: Colors.orange,
              child: Text(
                'Large Container',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 30),
            
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildBox(
                  Colors.purple,
                  'Left',
                  width: 80,
                  height: 40,
                  fontSize: 14,
                ),
                SizedBox(width: 16),
                buildBox(
                  Colors.teal,
                  'Right',
                  width: 80,
                  height: 40,
                  fontSize: 14,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  //reusable box widget
  Widget buildBox(
    Color color,
    String text, {
    double width = 60,
    double height = 60,
    double fontSize = 20,
  }) {
    return Container(
      width: width,
      height: height,
      color: color,
      alignment: Alignment.center,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
