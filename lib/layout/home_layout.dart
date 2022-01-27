import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:school_app/shared/components/components.dart';
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
            appBar: AppBar(
              title: const Text('مدرستي'),
              actions: [
                IconButton(
                  onPressed: () {},
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
            body:cubit.screensName[cubit.currentIndex],
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
