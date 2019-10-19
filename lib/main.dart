import 'package:anketuygulama/screens/feed_scren.dart';
import 'package:anketuygulama/screens/login_screen.dart';
import 'package:anketuygulama/screens/signup_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget _getScreen() {
    return StreamBuilder<FirebaseUser>(
      stream: FirebaseAuth.instance.onAuthStateChanged,
      builder: (BuildContext contex, snapshot) {
        if (snapshot.hasData) {
          return FeedScren();
        } else {
          return LoginScreen();
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'PollApp',
        debugShowCheckedModeBanner: false,
        home: _getScreen(),
        routes: {
          LoginScreen.id: (context) => LoginScreen(),
          SinupScreen.id: (context) => SinupScreen(),
          FeedScren.id: (context) => FeedScren(),
        });
  }
}
