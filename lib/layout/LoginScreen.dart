import 'package:flutter/material.dart';
import 'package:school_app/compenent.dart';
import 'package:school_app/constants.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    dynamic h = MediaQuery.of(context).size.height;
    dynamic w = MediaQuery.of(context).size.width;


    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: mainColor,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: h * 0.18,
            ),
            Text(
              "مدرستي",
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: main2Color),
            ),
            SizedBox(
              height: h * 0.15,
            ),
            mainTextFormFields(context, "اسم المستخدم"),

            SizedBox(
              height: h*0.045,
            ),
            mainTextFormFields(context, "كلمة المرور"),
            SizedBox(
              height: h*0.02,
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(" هل تواجه مشكلة ؟",style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: main2Color
                  ),),
                  InkWell(

                    child: Text("تواصل معنا",style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: main2Color
                    ),),
                  ),
                ],
              ),
            ),
            SizedBox(height: h*0.03,),
            Container(width: 313,
            height: 1,
              color: main2Color,
            ),
            SizedBox(height: h*0.10,),
            Container(
              width: w*0.90,
              height: 60,
              child: MaterialButton(onPressed: (){},
                color: main2Color,

              child: const Text("تسجيل دخول ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.white
              ),
              ),),
            )

          ],
        ),
      ),
    );
  }
}
