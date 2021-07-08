import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: MyApp(),
));

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        home: Stack(
          children: <Widget>[
             Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                image:  DecorationImage(
                  image: AssetImage("assets/yoru.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Scaffold(
              backgroundColor: Colors.transparent,
              body: Container(
                child: Column(
                  children: <Widget>[
                    Text(
                      'The time to act is now',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                      ),
                    ),
                    Text(
                      'Your path is laid out in front of you. By getting started, you already took the biggest step in self-improvement. We will guide you through it',
                      style: TextStyle(
                        
                      ),
                    ),
                    ButtonBar(
                      buttonPadding: EdgeInsets.only(left:300),
                      children: <Widget>[
                        ElevatedButton(
                          child: const Text('Continue'),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.pinkAccent,
                            onPrimary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
    );
  }
}