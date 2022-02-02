import 'package:flutter/material.dart';
import 'package:school_app/modules/grades/detalid_grade.dart';
import 'package:school_app/shared/components/constants.dart';
import 'package:school_app/shared/cubit/AppCubit/AppCubit.dart';

class GradeScreen extends StatelessWidget {
  const GradeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("الدرجات"),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) => buildGradesItem(index, context),
              separatorBuilder: (context, index) => Container(
                    height: 20,
                  ),
              itemCount: courses.length),
        ),
      ),
    );
  }
}

Widget buildGradesItem(index, context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: Container(
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 3),
            color: Colors.grey,
            blurRadius: 4,
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      height: 60,
      width: double.infinity,
      child: InkWell(
        onTap: () {
          AppCubit.get(context).index = index;
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => DetaildGrade()));
        },
        child: Row(
          children: [
            const SizedBox(width: 20),
            Text(
              courses[index],
              style: TextStyle(
                  color: mainColor, fontSize: 16, fontWeight: FontWeight.w600),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14.0),
              child: Icon(
                Icons.arrow_forward_ios_outlined,
                color: mainColor,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
