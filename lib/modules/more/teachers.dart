import 'package:flutter/material.dart';
import 'package:school_app/shared/components/components.dart';
import 'package:school_app/shared/components/constants.dart';

class Teachers extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "الكادر التعليمي"
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: ListView.builder(itemBuilder: (context,index)=>mainContainerInfo(context: context,first_text: courses[index],second_text: "اسم و الكنية")
          ,itemCount: courses.length,
          )
          ,

        ),
      ),
    );
  }
}
