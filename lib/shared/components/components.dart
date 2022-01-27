import 'package:flutter/material.dart';
import 'package:school_app/shared/components/constants.dart';
Widget mainLayoutWidget({String ?  widgetName,String ? imagePath})=>
    Column(
      children: [
        Container(
          width: 184,
          height: 184,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                offset: const Offset(0, 6), color: bgColor, blurRadius: 6)
          ], color: bgColor, borderRadius: BorderRadius.circular(25)),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 58, right: 58, top: 20, bottom: 34.9),
                child: Container(
                  color: bgColor,
                  child:  Image(
                    image: AssetImage('$imagePath'),
                  ),
                ),
              ),
              Text(
                "$widgetName",
                style: TextStyle(
                    fontSize: 28,

                    fontWeight: FontWeight.bold,
                    color: mainColor),
              )
            ],
          ),
        )
      ],
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
