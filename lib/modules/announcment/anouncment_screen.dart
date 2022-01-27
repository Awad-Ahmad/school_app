import 'package:flutter/material.dart';
import 'package:school_app/shared/components/constants.dart';

class AnnouncmentScreen extends StatelessWidget {
  const AnnouncmentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: ListView.separated(
            padding: const EdgeInsets.symmetric(vertical: 20),
            itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.25,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              Text(
                                "عنوان",
                                style: TextStyle(
                                    color: mainColor,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            "من شمنست منشتسه تصم شسمن انتسش ىوشسة ىءئن ىنشتلاسن كخهضصه سشتن شستكمسشي شسمن ",
                            maxLines: 2,
                            style: TextStyle(
                              color: mainColor,
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.arrow_back_ios,
                                      color: mainColor,
                                    ),
                                    Text(
                                      "متابعة القراءة",
                                      style: TextStyle(color: mainColor),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            separatorBuilder: (context, index) => Container(
                  height: 20,
                ),
            itemCount: 2),
      ),
    );
  }
}
