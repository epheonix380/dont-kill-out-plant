import 'package:flutter/material.dart';


class LandingpageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator LandingpageWidget - FRAME - HORIZONTAL
    return Container(
      decoration: BoxDecoration(
        color : Color.fromRGBO(242, 243, 237, 1),
      ),
      padding: EdgeInsets.symmetric(horizontal: 88, vertical: 98),
      child: Row(
        mainAxisSize: MainAxisSize.min,

        children: <Widget>[
          Container(
            decoration: BoxDecoration(

            ),
            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
            child: Column(
              mainAxisSize: MainAxisSize.min,

              children: <Widget>[Container(
                decoration: BoxDecoration(

                ),
                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,

                  children: <Widget>[Container(
                    decoration: BoxDecoration(

                    ),
                    padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,

                      children: <Widget>[Container(
                          width: 82,
                          height: 129.0027618408203,
                          decoration: BoxDecoration(
                            image : DecorationImage(
                                image: AssetImage('images/Garlicsan21.png'),
                                fit: BoxFit.fitWidth
                            ),
                          )
                      ), SizedBox(height : 33),
                        Container(
                            width: 175,
                            height: 148,

                            child: Stack(
                                children: <Widget>[
                                  Positioned(
                                      top: 0,
                                      left: 17,
                                      child: Text('don’t kill', textAlign: TextAlign.center, style: TextStyle(
                                          color: Color.fromRGBO(112, 112, 112, 1),
                                          fontFamily: 'Poppins',
                                          fontSize: 30,
                                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1
                                      ),)
                                  ),Positioned(
                                      top: 103,
                                      left: 41,
                                      child: Text('plant', textAlign: TextAlign.center, style: TextStyle(
                                          color: Color.fromRGBO(112, 112, 112, 1),
                                          fontFamily: 'Poppins',
                                          fontSize: 30,
                                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1
                                      ),)
                                  ),Positioned(
                                      top: 35,
                                      left: 0,
                                      child: Text('OUR', textAlign: TextAlign.center, style: TextStyle(
                                          color: Color.fromRGBO(112, 112, 112, 1),
                                          fontFamily: 'Poppins',
                                          fontSize: 65.9375,
                                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1
                                      ),)
                                  ),
                                ]
                            )
                        ),
                      ],
                    ),
                  ), SizedBox(height : 33),
                    Text('a social habit tracker', textAlign: TextAlign.center, style: TextStyle(
                        color: Color.fromRGBO(112, 112, 112, 1),
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1
                    ),),
                  ],
                ),
              ), SizedBox(height : 214),
                Container(
                  decoration: BoxDecoration(
                    borderRadius : BorderRadius.only(
                      topLeft: Radius.circular(1100),
                      topRight: Radius.circular(1100),
                      bottomLeft: Radius.circular(1100),
                      bottomRight: Radius.circular(1100),
                    ),
                    color : Color.fromRGBO(112, 112, 112, 1),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,

                    children: <Widget>[
                      Text('START', textAlign: TextAlign.center, style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontFamily: 'Poppins',
                          fontSize: 20,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1
                      ),),

                    ],
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
        