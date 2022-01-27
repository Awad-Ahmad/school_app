import 'package:flutter/material.dart';
import 'package:school_app/shared/components/constants.dart';

Widget mainLayoutWidget({String? widgetName, String? imagePath, context}) =>
    InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1 / 1,
              child: Container(
                // width: MediaQuery.of(context).size.width*0.3,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      offset: const Offset(0, 6), color: bgColor, blurRadius: 6)
                ], color: bgColor, borderRadius: BorderRadius.circular(25)),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsetsDirectional.only(
                        top: 20,
                      ),
                      width: MediaQuery.of(context).size.width * 0.17,
                      color: bgColor,
                      child: Image(
                        image: AssetImage('$imagePath'),
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "$widgetName",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: mainColor,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );

Widget mainTextFormFields(
        {context,
        String? labelText,
        IconData? suffixIcon,
        IconData? prefixIcon}) =>
    Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.90,
        color: Colors.white,
        child: Material(
          elevation: 10,
          shadowColor: Colors.white,
          child: TextFormField(
            decoration: InputDecoration(
              suffixIcon: Icon(
                suffixIcon,
                color: mainColor,
              ),
              prefixIcon: Icon(
                prefixIcon,
                color: mainColor,
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(5),
              ),
              labelText: labelText,
              labelStyle: const TextStyle(
                  color: Color(0xff0D3082),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
//a
Widget personalInfo({context,String ? first_text,String ?second_text})=>  Container(
  width:MediaQuery.of(context).size.width*0.90 ,
  height: 60,
  decoration:

  BoxDecoration(
      boxShadow: [
        BoxShadow(
            offset: const Offset(0, 6), color: Colors.white, blurRadius: 6)
      ], color: Colors.white, borderRadius: BorderRadius.circular(25)
  )
  ,



  child: Row(
    children: [
      Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Text("$first_text",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: mainColor
          ),),
      ),
      Spacer(),
      Padding(
        padding: const EdgeInsetsDirectional.only(
            end: 20
        ),
        child: Text("$second_text",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: mainColor
          ),),
      ),

    ],
  ),
);

