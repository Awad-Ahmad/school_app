import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_app/constants.dart';

class LoginScreen extends StatelessWidget
{

  @override
  Widget build(BuildContext context) {
    dynamic h = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: mainColor,

      body: Center(
        child: Column(
        //  mainAxisAlignment: MainAxisAlignment.center,
          children:
           [
            SizedBox(
             height:h*0.18,
            ),
              Text("مدرستي",
             style: TextStyle(
               fontSize: 40,
               fontWeight: FontWeight.bold
                 ,color: Colors.black
             ),
             ),
             SizedBox(height: h*0.15,),
             Directionality(
               textDirection:TextDirection.rtl,
               child: Container(




                 width: 386,
                 color: Colors.white ,

                 child: Material(
                   elevation: 10,
                   shadowColor: Colors.white,
                   child: TextFormField(

                     decoration: InputDecoration(



                       border: OutlineInputBorder(borderRadius: BorderRadius.circular(5),),

                       hintText:"اسم المستخدم",
                      hintStyle: TextStyle(color:Color(0xff0D3082),
                      fontWeight: FontWeight.bold),


                     ),

                   ),
                 ),


               ),

             ),




          ],
        ),
      ),


    );
  }
}
