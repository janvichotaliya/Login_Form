import 'package:flutter/material.dart';
import 'package:login_singup/Home.dart';


class SignUp extends StatelessWidget {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.all(20),
          child: Form(
            key: formKey, //key for form
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(labelText: 'Enter Name'),
                  validator: (value) {
                    if (value == null ||
                        value.isEmpty ||
                        !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                      //allow upper and lower case alphabets and space
                      return "Enter Correct Name";
                    } else {
                      return null;
                    }
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Enter Phone Number'),
                  validator: (value) {
                    if (value == null ||
                        value.isEmpty ||
                        !RegExp(
                            r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$')
                            .hasMatch(value)) {
                      //  r'^[0-9]{10}$' pattern plain match number with length 10
                      return "Enter Correct Phone Number";
                    } else {
                      return null;
                    }
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Enter Email'),
                  validator: (value) {
                    if (value == null || value.isEmpty ||!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
                      return "Enter Correct Email Address";
                    } else {
                      return null;
                    }
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      //check if form data are valid,
                      // your process task ahead if all data are valid
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>Home(),
                        ),
                      );
                    }
                  },
                  child: Text("Submit Data"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


