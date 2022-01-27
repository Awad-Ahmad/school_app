import 'package:flutter/material.dart';
import 'package:school_app/shared/components/constants.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) => buildMessagesItem(index),
          separatorBuilder: (context, index) => Container(
                height: 20,
              ),
          itemCount: courses.length),
    );
  }
}

// ignore: non_constant_identifier_names
Widget buildMessagesItem(index) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(offset: const Offset(0, 6), color: bgColor, blurRadius: 6)
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      height: 60,
      width: double.infinity,
      child: Row(
        children: [
          const SizedBox(width: 20),
          Text(
            courses[index],
            style: TextStyle(
                color: mainColor, fontSize: 16, fontWeight: FontWeight.w600),
          ),
          const Spacer(),
          IconButton(
            onPressed: (){},
            icon: Icon(
              Icons.arrow_forward_ios_outlined,
              color: mainColor,
            ),
          ),
        ],
      ),
    ),
  );
}
