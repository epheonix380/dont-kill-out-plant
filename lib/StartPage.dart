



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class StartPage extends StatelessWidget {
  const StartPage
({super.key});

  @override   
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
      child: Center(
        child: Image(
          width:145,
          height: 228,
          image: AssetImage('images/Garlicsan21.png'),
        ),
      ),
    );
  }
}