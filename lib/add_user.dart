import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:school_app/shared/components/components.dart';
import 'package:school_app/shared/components/constants.dart';
import 'package:school_app/shared/cubit/AppCubit/AppCubit.dart';

class AddUser extends StatefulWidget {
  const AddUser({Key? key}) : super(key: key);

  @override
  _AddUserState createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {
  @override
  Widget build(BuildContext context) {
    final _auth = FirebaseAuth.instance;
    dynamic h = MediaQuery.of(context).size.height;
    dynamic w = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Add a new user"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              mainTextFormFields(
                context: context,
                labelText: "الاسم",
                onChanged: (value) {
                  AppCubit.get(context).type = value;
                },
              ),
              SizedBox(
                height: h * 0.10,
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
                height: h * 0.10,
              ),
              mainTextFormFields(
                context: context,
                labelText: "كلمة السر",
                onChanged: (value) {
                  AppCubit.get(context).password = value;
                },
              ),
              SizedBox(
                height: h * 0.20,
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
                      //   try{
                      // await  _auth.createUserWithEmailAndPassword(email: email!, password: password!);
                      // print("===================");}
                      //
                      //
                      //   catch(e){
                      //
                      //  print("Error When  create User With Email And Password  $e");
                      //  print(email);
                      //
                      //   };
                      //  onPressed: () async {
                      try {
                        print("+++++===============");
                        print(AppCubit.get(context).email);
                        print(AppCubit.get(context).password);
                        print(AppCubit.get(context).type);
                        print("+++++==================");
                        // final user = await _auth.createUserWithEmailAndPassword(
                        //   email: AppCubit.get(context).email.toString(),
                        //   password:AppCubit.get(context).password.toString(),
                        // );

                        // here down down down down down

                        // await FirebaseFirestore.instance
                        //     .collection("users")
                        //     .add({
                        //   "email": "${AppCubit.get(context).email}",
                        //   "type": "${AppCubit.get(context).type}",
                        //   "phone": "000000000000000000",
                        //   "name": "anass",
                        //   "password": "${AppCubit.get(context).password}"
                        // });

                        // here  up up up up up up up


                        print("created suc");
                        //    if (user.user != null) {
                        // Navigator.pushReplacement(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => HomeLayout(),
                        //   ),
                        // );

                        //  }
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
                      ;
                    },
                    color: mainColor,
                    child: const Text(
                      " add ",
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
    );
  }
}
