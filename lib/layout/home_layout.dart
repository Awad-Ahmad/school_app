import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:school_app/shared/components/constants.dart';
import 'package:school_app/shared/cubit/AppCubit/AppCubit.dart';
import 'package:school_app/shared/cubit/AppCubit/AppStates.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      listener: (BuildContext context, state) {},
      builder: (BuildContext context, state) {
        var cubit = AppCubit.get(context);
        dynamic h = MediaQuery.of(context).size.height;
        dynamic w = MediaQuery.of(context).size.width;

        return Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            drawer: Drawer(
              child: ListView(
                children: [
                  Container(
                    height: h * 0.23,
                    color: mainColor,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20, top: 20),
                      child: Row(
                        // mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const CircleAvatar(
                            radius: 50,
                            backgroundColor: Colors.white,
                          ),
                          Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 8, top: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    Text(
                                      "سامي رامي",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  right: 8,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    Text(
                                      "صف سادس",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: InkWell(
                            onTap: (){},

                            child: Row(
                             children: [
                              Icon(
                                      Icons.settings,
                                      color: mainColor,
                                    ),
                                //SizedBox(width: 20,),
                                Text(
                                  "الاعدادات",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: mainColor),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: InkWell(
                            onTap: (){},
                            child: Row(
                              children: [
                               Icon(
                                      Icons.event,
                                      color: mainColor,
                                    ),
                                //SizedBox(width: 20,),
                                Text(
                                  "احداث",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: mainColor),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: w * 0.83,
                          height: 1,
                          color: mainColor,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: InkWell(
                            onTap: (){},
                            child: Row(
                              children: [
                                Icon(
                                      Icons.info,
                                      color: mainColor,
                                    ),
                                //  SizedBox(width: 20,),
                                Text(
                                  "عن التطبيق",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: mainColor),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: InkWell(
                            onTap: (){},
                            child: Row(
                              children: [


                                    Icon(
                                      Icons.login,
                                      color: mainColor,
                                    ),
                                //SizedBox(width: 20,),
                                Text(
                                  "تسجيل خروج",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: mainColor),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            appBar: AppBar(
              title: const Text('مدرستي'),
              actions: [
                IconButton(
                  onPressed: () {
                    Container(
                      height: 200,
                      width: 200,
                      color: Colors.red,
                    );
                  },
                  icon: const Icon(
                    Icons.notifications_none_outlined,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.refresh_outlined,
                  ),
                ),
              ],
            ),
            body: cubit.screensName[cubit.currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: cubit.currentIndex,
              onTap: cubit.changeIndex,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home_outlined), label: "رئيسي"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.message_outlined), label: "مراسلة"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person_outline), label: "شخصي"),
              ],
            ),
          ),
        );
      },
    );
  }
}
