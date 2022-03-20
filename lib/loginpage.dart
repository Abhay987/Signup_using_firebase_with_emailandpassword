import 'package:firebase_email_password_auth/signuppage.dart';
import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email="";
  String password="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page',style: TextStyle(color: Colors.blue),),
        elevation: 0,
        backgroundColor: Colors.transparent,

      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            child: TextField(
              onChanged: (value){setState(() {
                email=value;
              });},
              keyboardType: TextInputType.emailAddress,
              decoration:  InputDecoration(
                  border: OutlineInputBorder(
                    //borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  hintText: 'Email',
                  filled: true,
                  fillColor: Colors.grey[300],
                  labelText: 'Email'),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            child: TextField(
              onChanged: (value){setState(() {
                password=value;
              });},
              keyboardType: TextInputType.text,
              decoration:  InputDecoration(
                  border: OutlineInputBorder(
                    //borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(20.0),
                  ),

                  hintText: 'Password',
                  filled: true,
                  fillColor: Colors.grey[300],
                  labelText: 'Password'),
              obscureText: true,
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.all(20),
            child: ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(15),
                primary: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
              ),
              child: const Text('Login'),
            ),
          ),
    Container(
    width: double.infinity,
    margin: const EdgeInsets.all(20),
    child: ElevatedButton(
    onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignupPage()));
    },
    style: ElevatedButton.styleFrom(
    padding: const EdgeInsets.all(15),
    primary: Colors.black,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10)
    ),
    ),
    child: const Text('Sign Up'),),),
        ],
      ),
    );
  }
}
