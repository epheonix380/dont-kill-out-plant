import 'package:camera/camera.dart';
import 'package:dont_kill_our_plant/Pages/Userflow/Camera.dart';
import 'package:dont_kill_our_plant/Pages/Userflow/Chats.dart';
import 'package:dont_kill_our_plant/Pages/Userflow/Profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
    required this.camera});

  final CameraDescription camera;
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3, 
      child: TabBarView(
        children: [
        Profile(),
        CameraApp(camera: widget.camera,),
        Chats(),
        
      ]));
  }
}