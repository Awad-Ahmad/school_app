import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget
{

  @override
  Widget build(BuildContext context) {
    dynamic h = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(247, 240, 240, 100),
      body: Column(
        children:
         [
          SizedBox(
            height:MediaQuery.of(context).size.height*0.18,
          ),
           const Text("مدرستي",
           style: TextStyle(
             fontSize: 40,
             fontWeight: FontWeight.bold
               ,color: Colors.black
           ),
           )



        ],
      ),


    );
  }
}
