import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const CardBoarding());
}

class CardBoarding extends StatelessWidget {
  const CardBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: <Color>[Colors.red, Colors.pink],
        )),
        child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(top: 20, left: 20),
              margin: EdgeInsets.all(25),
              width: 350,
              height: 380,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      'Discover New\nAmazing Colors',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(
                        top: 20,
                      ),
                      child: Text(
                        'Mulai dari solid hingga gradiasi\nSemua warna sangat bagus sekali',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 2,
                      )),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 10,
                    ),
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 70, left: 10),
                          width: 12,
                          height: 12,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.redAccent,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 70, left: 10),
                          width: 12,
                          height: 12,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey.withOpacity(0.5),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 70, left: 10),
                          width: 12,
                          height: 12,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey.withOpacity(0.5),
                          ),
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      print('Button Tapped');
                    },
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: 45, left: 5),
                      width: 300,
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          colors: <Color>[
                            Colors.red,
                            Colors.pink,
                          ]
                        )
                      ),
                      child: Text('Continue', style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 18
                      ), textAlign: TextAlign.center,),
                    ),
                  )
                ],
              ),
            )),
      )),
    );
  }
}
