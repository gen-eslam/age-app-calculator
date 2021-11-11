import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  late var age ;
  ResultScreen(this.age );

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.red,
        title: Center(
          child: Stack(

            children: [
              Text(
                'AGE Calculator',
                style: TextStyle(
                  fontSize: 35,
                  fontStyle: FontStyle.italic,
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 6
                    ..color = Colors.red,


                ),
              ),
              Text(
                'AGE Calculator',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                  fontSize: 35,


                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(


                  children: [
                    Text(
                      'Your Age Is : ',
                      style: TextStyle(
                        fontSize: 35,
                        fontStyle: FontStyle.italic,
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 6
                          ..color = Colors.red,


                      ),
                    ),
                    Text(
                      'Your Age Is : ',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                        fontSize: 35,


                      ),
                    ),
                  ],
                ),
                Stack(


                  children: [
                    Text(
                      '${widget.age}',
                      style: TextStyle(
                        fontSize: 35,
                        fontStyle: FontStyle.italic,
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 6
                          ..color = Colors.red,


                      ),
                    ),
                    Text(
                      '${widget.age}',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                        fontSize: 35,


                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ) ,
      ),
    );
  }
}
