import 'package:flutter/material.dart';
import 'package:login_singup/signup.dart';
import 'package:login_singup/home.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Myapp(),
    );
  }
}

class Myapp extends StatefulWidget {
  Myapp({Key? key}) : super(key: key);

  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Text(
                  'Login',
                  style: TextStyle(fontSize: 40),
                ),
                CircleAvatar(
                  radius: 80.0,
                  backgroundImage: AssetImage('assets/images/npsm.png'),
                ),
                Container(
                  margin: EdgeInsets.all(35),
                  child: TextFormField(
                      validator: (value) {
                        if (value!.length != 10) {
                          return 'Please Enter Valid Number';
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        hintText: 'Number',
                        filled: true,
                        fillColor: Colors.blueAccent,
                        labelText: 'Enter Number',
                      ),
                      keyboardType: TextInputType.number),
                ),
                ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Home()),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      elevation: 20, // Elevation
                      shadowColor: Colors
                          .amber, // Shadow Color
                    ),
                    child: Text('Login')),
                InkWell(
                  onTap: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUp()))
                  },
                  child: Text(
                    'Sign Up',
                    style:
                    TextStyle(fontSize: 20, backgroundColor: Colors.yellowAccent),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
