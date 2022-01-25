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
                  fontSize: 40, fontWeight: FontWeight.bold, color: main2Color),
            ),
            SizedBox(
              height: h * 0.15,
            ),
            mainTextFormFields(
              context: context,
              labelText: "اسم المستخدم",
              prefixIcon: Icons.person_outline,
            ),
            SizedBox(
              height: h * 0.045,
            ),
            mainTextFormFields(
                context: context,
                labelText: "كلمة المرور",
                sufixicon: Icons.remove_red_eye_outlined,
                prefixIcon: Icons.lock_outlined,
                ),
            SizedBox(
              height: h * 0.02,
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    " هل تواجه مشكلة ؟",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: main2Color),
                  ),
                  InkWell(
                    child: Text(
                      "تواصل معنا",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: main2Color),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: h * 0.03,
            ),
            Container(
              width: w * 0.73,
              height: 1,
              color: main2Color,
            ),
            SizedBox(
              height: h * 0.10,
            ),
            Material(
              elevation: 10,
              shadowColor: main2Color,
              child: Container(
                width: w * 0.90,
                height: 60,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(5)),
                child: MaterialButton(
                  onPressed: () {},
                  color: main2Color,
                  child: const Text(
                    "تسجيل دخول ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
