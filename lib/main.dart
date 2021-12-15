import 'package:flutter/material.dart';
//import 'first_page.dart';
import 'dart:math';

//import 'second_page.dart';
void main() {
  runApp(ItsGame());
}

class ItsGame extends StatefulWidget {
  @override
  _ItsGameState createState() => _ItsGameState();
}

class _ItsGameState extends State<ItsGame> {
  int leftx = 1;
  int rightx = 1;
  String leftreslut = '';
  String rightreslut = '';
  List<Widget> leftSide = [];
  List<Widget> rightSide = [];
  int leftConter = 0;
  int rightCounter = 0;

  CardUse() {
    setState(() {
      leftx = Random().nextInt(3) + 1;
      rightx = Random().nextInt(3) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              'its a game',
              style: TextStyle(fontSize: 30),
            ),
          ),
          backgroundColor: Colors.black,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Expanded(
                      child: Column(
                    children: [
                      Text(
                        leftreslut,
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.w900),
                      ),
                      Container(
                        padding: EdgeInsets.all(5.0),
                        margin: EdgeInsets.all(5),
                        child: Image.asset(
                          "images/$leftx.jpg",
                          width: 100,
                          height: 100,
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue, width: 5)),
                      ),
                      Wrap(
                        children: leftSide,
                      ),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.amber,
                        child: Text(
                          leftConter.toString(),
                          style: TextStyle(fontSize: 20),
                        ),
                      )
                    ],
                  )),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          rightreslut,
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.w900),
                        ),
                        Container(
                          padding: EdgeInsets.all(5.0),
                          margin: EdgeInsets.all(5),
                          child: Image.asset(
                            "images/$rightx.jpg",
                            width: 100,
                            height: 100,
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue, width: 5)),
                        ),
                        Wrap(
                          children: rightSide,
                        ),
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.amber,
                          child: Text(
                            rightCounter.toString(),
                            style: TextStyle(fontSize: 20),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              FlatButton(
                  color: Colors.cyanAccent,
                  onPressed: () {
                    CardUse();
                    if (leftx == 1 && rightx == 1) {
                      setState(() {
                        leftreslut = rightreslut = 'Drawer $leftx';
                      });
                    } else if (leftx == 2 && rightx == 2) {
                      setState(() {
                        leftreslut = rightreslut = 'Drawer $leftx';
                      });
                    } else if (leftx == 3 && rightx == 3) {
                      setState(() {
                        leftreslut = rightreslut = 'Drawer $leftx';
                      });
                    } else if (leftx == 1 && rightx == 2) {
                      setState(() {
                        leftreslut = ' loser $leftx';
                        rightreslut = ' winner $rightx';
                        leftSide.add(Icon(
                          Icons.close,
                          color: Colors.red,
                          size: 30,
                        ));
                        rightSide.add(Icon(
                          Icons.check,
                          color: Colors.green,
                          size: 30,
                        ));
                        rightCounter++;
                      });
                    } else if (leftx == 2 && rightx == 1) {
                      setState(() {
                        leftreslut = ' winner $leftx';
                        rightreslut = ' loser $rightx';
                        leftSide.add(Icon(
                          Icons.check,
                          color: Colors.green,
                          size: 30,
                        ));
                        rightSide.add(Icon(
                          Icons.close,
                          color: Colors.red,
                          size: 30,
                        ));
                        leftConter++;
                      });
                    } else if (leftx == 1 && rightx == 3) {
                      setState(() {
                        leftreslut = ' loser $leftx';
                        rightreslut = ' winner $rightx';
                        leftSide.add(Icon(
                          Icons.close,
                          color: Colors.red,
                          size: 30,
                        ));
                        rightSide.add(Icon(
                          Icons.check,
                          color: Colors.green,
                          size: 30,
                        ));
                        rightCounter++;
                      });
                    } else if (leftx == 3 && rightx == 1) {
                      setState(() {
                        leftreslut = ' winner $leftx';
                        rightreslut = '  Loser $rightx';
                        leftSide.add(Icon(
                          Icons.check,
                          color: Colors.green,
                          size: 30,
                        ));
                        rightSide.add(Icon(
                          Icons.close,
                          color: Colors.red,
                          size: 30,
                        ));
                        leftConter++;
                      });
                    } else if (leftx == 1 && rightx == 3) {
                      setState(() {
                        leftreslut = 'Loser $leftx';
                        rightreslut = 'Winner $rightx';
                        leftSide.add(Icon(
                          Icons.close,
                          color: Colors.red,
                          size: 30,
                        ));
                        rightSide.add(Icon(
                          Icons.check,
                          color: Colors.green,
                          size: 30,
                        ));
                        rightCounter++;
                      });
                    } else if (leftx == 2 && rightx == 3) {
                      setState(() {
                        leftreslut = 'Loser $leftx ';
                        rightreslut = 'Winner $rightx';
                        leftSide.add(Icon(
                          Icons.close,
                          color: Colors.red,
                          size: 30,
                        ));
                        rightSide.add(Icon(
                          Icons.check,
                          color: Colors.green,
                          size: 30,
                        ));
                        rightCounter++;
                      });
                    } else if (leftx == 3 && rightx == 2) {
                      setState(() {
                        leftreslut = 'Winner $leftx';
                        rightreslut = 'loser $rightx';
                        leftSide.add(Icon(
                          Icons.check,
                          color: Colors.green,
                          size: 30,
                        ));
                        rightSide.add(Icon(
                          Icons.close,
                          color: Colors.red,
                          size: 30,
                        ));
                        leftConter++;
                      });
                    }
                  },
                  child: Text(
                    "press",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.red,
                        backgroundColor: Colors.yellow),
                  )),
              FlatButton(color: Colors.cyanAccent,
                  onPressed: (){
                setState(() {
//                  int leftx = 1;
//                  int rightx = 1;
//                  String leftreslut = '';
//                  String rightreslut = '';
//                  List<Widget> leftSide = [];
//                  List<Widget> rightSide = [];
//                  int leftConter = 0;
//                  int rightCounter = 0;
                  leftreslut = '';
                  rightreslut = '';
                  leftSide = [];
                  rightSide = [];
                  leftConter = 0;
                  rightCounter = 0;

                });

                  }, child: Text(
                    "Finish",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.red,
                        backgroundColor: Colors.yellow),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
