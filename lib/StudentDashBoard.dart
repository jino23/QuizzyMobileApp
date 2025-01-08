import 'package:quizzy_mobile_app/HostGameScreen.dart';
import 'package:quizzy_mobile_app/JoinGameScreen.dart';
import 'package:quizzy_mobile_app/ReviewGameScreen.dart';
import 'package:quizzy_mobile_app/ReviewGameScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:permission_handler/permission_handler.dart'; 
import 'dart:io' show Platform;

class StudentDashboard extends StatefulWidget{
  @override
  _StudentDashboardState createState() => _StudentDashboardState();
}

class _StudentDashboardState extends State<StudentDashboard>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Dashboard'),
        backgroundColor: Colors.purple[200],
      ),
      backgroundColor: Colors.purple[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => JoinGameScreen() ));
              }, 
              child: const Text('Join Game')
              ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ReviewGameScreen()));
              }, 
              child: const Text('Review')
              ),
          ],
        ),),
    );
  }
}
