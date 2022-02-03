import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:school_app/add_user.dart';
import 'package:school_app/layout/home_layout.dart';
import 'package:school_app/shared/components/components.dart';
import 'package:school_app/shared/components/constants.dart';
import 'package:school_app/shared/cubit/AppCubit/AppCubit.dart';
import 'package:school_app/shared/models/User.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    dynamic h = MediaQuery.of(context).size.height;
    dynamic w = MediaQuery.of(context).size.width;

    final _auth = FirebaseAuth.instance;
    MyUsers x;
    String? curremail;
    String? keyword;
    var Firestore = FirebaseFirestore.instance;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        //resizeToAvoidBottomInset: false,
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
                  onChanged: (value) {
                    AppCubit.get(context).email = value;
                  },
                  context: context,
                  labelText: "اسم المستخدم",
                  prefixIcon: Icons.person_outline,
                ),
                SizedBox(
                  height: h * 0.045,
                ),
                mainTextFormFields(
                  onChanged: (value) {
                    AppCubit.get(context).password = value;
                  },
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
                          color: mainColor,
                        ),
                      ),
                      InkWell(
                        child: Text(
                          "تواصل معنا",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: mainColor,
                          ),
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
                      onPressed: () async {
                        try {
                          final user = await _auth.signInWithEmailAndPassword(
                            email: AppCubit.get(context).email.toString(),
                            password: AppCubit.get(context).password.toString(),
                          );
                          if (user.user != null) {
                            curremail = await _auth.currentUser!.email;
                            var u = await Firestore.collection("users")
                                .where("email", isEqualTo: "$curremail")
                                .get();
                            u.docs.forEach((element) {
                              print("====================================");
                              x = MyUsers(
                                  element.data()["first_name"],
                                  element.data()["email"],
                                  element.data()["last_name"],
                                  element.data()["users_id"],
                                  element.data()["password"],
                                  element.data()["type"]);
                              AppCubit.get(context).currUser = x;
                              print("====================================");
                              print(AppCubit.get(context).currUser?.firstName);
                            });
                            var nextScreen;
                            if (AppCubit.get(context).currUser?.type ==
                                "student") {
                              nextScreen = const HomeLayout();
                            }
                            if (AppCubit.get(context).currUser?.type ==
                                "admin") {
                              nextScreen = const AddUser();
                            }
                            //TODO it
                            else {
                              nextScreen = const HomeLayout();
                            }
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => nextScreen,
                              ),
                            );
                          }
                        } catch (e) {
                          print(e.toString());
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: Center(
                                  child: Text(
                                "",
                                style: TextStyle(color: Colors.grey[400]),
                              )),
                              content: const Text(
                                "error",
                                style: TextStyle(color: Colors.white),
                              ),
                              backgroundColor: Colors.grey[400],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text(
                                    "ok",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          );
                          //print(e);

                        }
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
