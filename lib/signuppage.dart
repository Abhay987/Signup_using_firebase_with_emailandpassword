//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_email_password_auth/successpage.dart';
import 'package:flutter/material.dart';
class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _auth=FirebaseAuth.instance;
    //final _firestor=FirebaseFirestore.instance;
  String email="";
  String password="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: const Icon(Icons.arrow_back,color: Colors.black,),onPressed: (){
          Navigator.pop(context);
        },),
        title: const Text('Sign Up Page',style: TextStyle(color: Colors.blue),),
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
              onPressed: ()async{
                try{
                  final newuser=await _auth.createUserWithEmailAndPassword(email: email, password: password);
                  if(newuser!=null){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const SuccessPage()));
                  }
                }
                catch(e){
                  debugPrint('exception is $e');
                }
                //
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(15),
                primary: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
              ),
              child: const Text('SIGN UP'),
            ),
          ),
        ],
      ),
    );
  }
}
