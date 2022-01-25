import 'package:flutter/material.dart';
import 'package:school_app/shared/components/constants.dart';

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
