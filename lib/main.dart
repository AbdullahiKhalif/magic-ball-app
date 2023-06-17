import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade900,
      appBar: AppBar(
        title: Text('Ask Me Any Question'),
        backgroundColor: Colors.teal.shade900,
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({super.key});
 
  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int answerImg = 1;
    void ShowAnswerBall(){
    setState(() {
      answerImg = Random().nextInt(5)+1;
    });
   }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  ShowAnswerBall();
                },
                child: Image.asset('images/ball$answerImg.png'),
              ),
            ),
           
          ],
        ),
      ),
    );
  }
}
