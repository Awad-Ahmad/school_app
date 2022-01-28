import 'package:flutter/material.dart';
import 'package:school_app/shared/components/components.dart';
import 'package:school_app/shared/components/constants.dart';

class PersonalInfo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    dynamic h = MediaQuery.of(context).size.height;
    dynamic w = MediaQuery.of(context).size.width;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        color: bgColor,
        child: Center(child: Column(

          children: [

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: MediaQuery.of(context).size.width*0.48,
                height: MediaQuery.of(context).size.height*0.23,
                color: bgColor,
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: mainColor,
                ),
              ),
            ),
           Expanded(
             child: ListView.separated(itemBuilder: (context,index)=>
                 mainContainerInfo(context:context, first_text:personalsInfo[index], second_text:personalInfoDetails[index]), separatorBuilder:(context,index)=>Padding(
                   padding: const EdgeInsets.symmetric(vertical: 0,
                   ),
                   child: Container(),
                 ), itemCount: personalInfoDetails.length),
           )
          ],
        )),
      ),
    );
  }
}
