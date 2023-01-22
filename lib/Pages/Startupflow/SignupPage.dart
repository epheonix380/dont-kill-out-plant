

import 'package:dont_kill_our_plant/Pages/Startupflow/SigninPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignUp extends StatefulWidget {
  const SignUp
({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Center(
            
            child: Container(
              padding: EdgeInsets.fromLTRB(0, 125, 0, 25),
              child: Column(
                children: [
                  Image(
                    width:57,
                    height: 90,
                    image: AssetImage('images/Garlicsan21.png'),
                  ),
                  Text("let's get started", style: Theme.of(context).textTheme.headline6,),
                  Text("create an account"),
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
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'full name',
                      ),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'username',
                      ),
                    ),
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
                    TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'confirm password',
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
                  FirebaseAuth.instance.createUserWithEmailAndPassword(email: emailController.text, password: passwordController.text)
                }, 
                child: Text("Sign Up"),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Theme.of(context).colorScheme.onBackground),
                  foregroundColor: MaterialStateProperty.all<Color>(Theme.of(context).colorScheme.background),)

              ),
            ),
            TextButton(onPressed: (() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Signin()));
            }), child: Text("already have an account? LOGIN"))
        ],
      ),
    );
  }
}