import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:school_app/shared/components/components.dart';
import 'package:school_app/shared/components/constants.dart';
import 'package:school_app/shared/cubit/AppCubit/AppCubit.dart';
import 'package:school_app/shared/cubit/AppCubit/AppStates.dart';

class DetaildGrade extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
        listener: (BuildContext context, state) {},
        builder: (BuildContext context, state)
        {
          var cubit = AppCubit.get(context);
          dynamic h = MediaQuery
              .of(context)
              .size
              .height;
          dynamic w = MediaQuery
              .of(context)
              .size
              .width;
         return Directionality(
           textDirection: TextDirection.rtl,
           child: Scaffold(
             backgroundColor: bgColor,
              appBar: AppBar(
                title: Text(courses[AppCubit.get(context).index],
              ),
            ),
             body: Padding(
               padding: const EdgeInsets.only(top: 20),
               child: Column(
                 children: [
                   Expanded(
                     flex: 1,
                     child: ListView.builder(itemBuilder: (context,index)
                     =>mainContainerInfo(context:context ,first_text:gradesdestalies[index] ,second_text:"400/500" )

                       ,itemCount: 2,
                     ),
                   ),
                   Expanded(
                     flex: 1,
                     child: ListView.builder(itemBuilder: (context,index)
                     =>mainContainerInfo(context:context ,first_text:gradesdestalies[index+2] ,second_text:"400/500" )

                       ,itemCount: 2,
                     ),
                   ),
                   Expanded(
                     flex: 2,
                     child: CircularPercentIndicator(
                       radius: 109.0,
                       lineWidth: 25.0,

                       percent: 0.6,
                       center:  Text("400/500",style: TextStyle(
                         fontWeight: FontWeight.bold,
                         color: mainColor,
                         fontSize: 22
                       ),),

                       progressColor: mainColor,

                     ),
                   )

                 ],
               ),
             ),
           ),
         );


        });
  }


}