import 'package:flutter/material.dart';
class SuccessPage extends StatefulWidget {
  const SuccessPage({Key? key}) : super(key: key);

  @override
  State<SuccessPage> createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: const Icon(Icons.arrow_back,color: Colors.black,),onPressed: (){
          Navigator.pop(context);
        },),
        title: const Text('Successfully login and signup',style: TextStyle(color: Colors.blue),),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
