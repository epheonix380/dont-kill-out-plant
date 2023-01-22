

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Signin extends StatefulWidget {
  const Signin
({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("don't let your plant die"),
      ),
      body: Container(
        child: ListView(
          children: [
            Center(
              
              child: Container(
                padding: EdgeInsets.fromLTRB(0, 125, 0, 100),
                child: Column(
                  children: [
                    Image(
                      width:57,
                      height: 90,
                      image: AssetImage('images/Garlicsan21.png'),
                    ),
                    Text("welcome back", style: Theme.of(context).textTheme.headline6,),
                    Text("lets get you logged in"),
                  ],
                ),
              ),),
              Container(
                child: Form(
                  onChanged: () {
                    
                  },
                  child: Column(
                    children: [
                      TextFormField(
                        controller: emailController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'email',
                        ),
                      ),
                      TextFormField(
                        controller: passwordController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'password',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(50, 50, 50, 50),
                child: TextButton(
                  onPressed: ()=>{
                    FirebaseAuth.instance.signInWithEmailAndPassword(email: emailController.text, password: passwordController.text).then((value) => Navigator.pop(context))
                  }, 
                  child: Text("Sign In"),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Theme.of(context).colorScheme.onBackground),
                    foregroundColor: MaterialStateProperty.all<Color>(Theme.of(context).colorScheme.background),)
    
                ),
              )
          ],
        ),
      ),
    );
  }
}