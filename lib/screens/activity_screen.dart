import 'package:flutter/material.dart';

class ActivitySearch extends StatefulWidget {
  @override
  _ActivitySearchState createState() => _ActivitySearchState();
}

class _ActivitySearchState extends State<ActivitySearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
          
          backgroundColor: Colors.white,
          title: Text(
            'PollApp',
            style: TextStyle(
              color: Colors.deepPurple,
              fontFamily: 'SEGA',
              fontSize: 15.0,
            ),
          ),
        ),
      body: Center(
        child: Text("Activity Screen"),
      ),
    );
  }
}