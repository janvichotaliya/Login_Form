import 'package:flutter/material.dart';
import 'main.dart';
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // handle the back button press
        // for example, navigate back to the main page
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Main()),
        );
        return false; // prevent default behavior (pop the current page)
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: Center(
          child: Text('Welcome to the home page!'),
        ),
      ),
    );
  }
}
