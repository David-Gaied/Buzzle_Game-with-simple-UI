import 'package:flutter/material.dart';
import 'dart:math';
class FirstPage extends StatefulWidget {

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int x =1;
  int y=1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(
          "Dice",
          style: TextStyle(
              fontWeight: FontWeight.w900, color: Colors.white, fontSize: 40),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Some Dice",
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                  fontSize: 30),
            ),
            Row(
              children: [
                Expanded(child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Image.asset('images/$x.jpg'),
                )),
                Expanded(child: Padding(
                  padding:  EdgeInsets.all(12.0),
                  child: Image.asset('images/$y.jpg'),
                )),
              ],
            ),

            FlatButton(
                color: Colors.orange,
                onPressed: () {
                  setState(() {
                    x=Random().nextInt(2)+1;
                    y=Random().nextInt(2)+1;

                  });

                },
                child: Text(
                  "play",
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                      fontSize: 30),
                ))
          ],
        ),
      ),
    ));
  }
}
