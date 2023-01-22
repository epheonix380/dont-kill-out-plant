


import 'dart:io';

import 'package:camera/camera.dart';
import 'package:dont_kill_our_plant/Pages/Home.dart';
import 'package:dont_kill_our_plant/Pages/Startupflow/SigninPage.dart';
import 'package:dont_kill_our_plant/Pages/Startupflow/SignupPage.dart';
import 'package:dont_kill_our_plant/StartPage.dart';
import 'package:dont_kill_our_plant/StateModels/AppState.dart';
import 'package:dont_kill_our_plant/firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';

class App extends StatefulWidget {
  const App({
    super.key,
    required this.camera});

  final CameraDescription camera;

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }
  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/state.txt');
  }
   Future<String> readState() async {
    try {
      final file = await _localFile;

      // Read the file
      final contents = await file.readAsString();

      return contents;
    } catch (e) {
      // If encountering an error, return 0
      return "anon";
    }
  }
  Future<File> writeState(String state) async {
    final file = await _localFile;

    // Write the file
    return file.writeAsString(state);
  }

  AppStates toAppStates(String state) {
    switch (state){
      case "anon":
        return AppStates.anon;
      case "auth":
        return AppStates.auth;
      default:
        return AppStates.error;
    }
  }

  void loadStates() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
      );
    FirebaseAuth.instance
      .authStateChanges()
      .listen((User? user) {
        print("test"); 
        if (user == null) {
          Provider.of<AppState>(context, listen: false).setState(AppStates.anon);
        } else {
          Provider.of<AppState>(context, listen: false).setState(AppStates.auth);
        }
      });
    
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadStates();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<AppState>(builder: ((context, value, child) {
      if (value.getState() == AppStates.loading) {
        return StartPage();
      } else if (value.getState() == AppStates.anon) {
        return Scaffold(
          body: SignUp(),
        );
      } else if (value.getState() == AppStates.auth) {
        return Scaffold(
          appBar: AppBar(title: Text("don't let our plants die"),
          actions: [
            IconButton(onPressed: () {
              FirebaseAuth.instance.signOut();
            }, icon: Icon(Icons.exit_to_app_rounded))
          ],
          ),
          body: Home(camera:widget.camera),
        );
      } else {
        return StartPage();
      }
    }));
  }
}