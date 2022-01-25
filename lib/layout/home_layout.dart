import 'package:flutter/material.dart';
import 'package:school_app/shared/components/constants.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('مدرستي'),
          actions: [
            IconButton(onPressed: (){}, icon:  Icon(Icons.refresh_outlined,color: mainColor,),),
            IconButton(onPressed: (){}, icon:  Icon(Icons.notifications_none_outlined,color: mainColor,),),
          ],
        ),
        body: Column(
          children: [],
        ),
        bottomNavigationBar: BottomNavigationBar(items: [],),
      ),
    );
  }
}
