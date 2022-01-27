import 'package:flutter/material.dart';
import 'package:school_app/layout/home_layout.dart';
import 'package:school_app/shared/components/components.dart';
import 'package:school_app/shared/components/constants.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    dynamic h = MediaQuery.of(context).size.height;
    dynamic w = MediaQuery.of(context).size.width;

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: bgColor,
        body: Center(
          child: SingleChildScrollView(
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
                    color: mainColor,
                  ),
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
                  suffixIcon: Icons.remove_red_eye_outlined,
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
                            color: mainColor,),
                      ),
                      InkWell(
                        child: Text(
                          "تواصل معنا",
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: mainColor,),
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
                  color: mainColor,
                ),
                SizedBox(
                  height: h * 0.10,
                ),
                Material(
                  elevation: 10,
                  shadowColor: mainColor,
                  child: Container(
                    width: w * 0.90,
                    height: 60,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(5)),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeLayout(),
                          ),
                        );
                      },
                      color: mainColor,
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
        ),
      ),
    );
  }
}
