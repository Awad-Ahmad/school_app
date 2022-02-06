import 'package:flutter/material.dart';
import 'package:school_app/modules/more/teachers.dart';
import 'package:school_app/shared/components/components.dart';
import 'package:school_app/shared/components/constants.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text("المزيد"),

        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: ListView.builder(itemBuilder: (context,index)=>mainMoreContainer(context: context,first_text:"الكادر التعليمي",second_text: "" )
          ,itemCount: 1,)
        ),
      ),
    );
  }
}
Widget mainMoreContainer({context, String? first_text, String? second_text}) =>
    InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Teachers()));
      },
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.90,
          height: 60,
          decoration: BoxDecoration(boxShadow: const [
            BoxShadow(
              offset: Offset(0, 3),
              color: Colors.grey,
              blurRadius: 4,
            )
          ], color: Colors.white, borderRadius: BorderRadius.circular(5)),
          child: Row(
            children: [
              SizedBox(width: 20,),
              Container(
                width: 34,
                height: 28,
                child: const Image
                  (image: AssetImage("assets/images/Teachers.png")
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Text(
                  "$first_text",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: mainColor),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsetsDirectional.only(end: 20),
                child: Text(
                  "$second_text",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: mainColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
