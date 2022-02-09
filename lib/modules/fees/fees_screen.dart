import 'package:flutter/material.dart';
import 'package:school_app/shared/components/components.dart';
import 'package:school_app/shared/components/constants.dart';

class FeesScreen extends StatelessWidget {
  const FeesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    dynamic h = MediaQuery.of(context).size.height;

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
          title: const Text(
            "الرسوم المالية",
          ),
        ),
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: ListView.separated(
                      itemBuilder: (context, index) => mainContainerInfo(
                          context: context,
                          first_text: feesInfo[index],
                          second_text: feesetalies[index]),
                      separatorBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.symmetric(vertical: 0),
                          ),
                      itemCount: 3),
                ),
                //SizedBox(height: h*0.08,),

                Expanded(
                  flex: 2,
                  child: ListView.separated(
                      itemBuilder: (context, index) => mainContainerInfo(
                          context: context,
                          first_text: feesInfo2[index],
                          second_text: feesetalies[index + 3]),
                      separatorBuilder: (context, index) => Container(),
                      itemCount: 3),
                ),

                Directionality(
                  textDirection: TextDirection.rtl,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          " هل تواجه مشكلة ؟",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: mainColor,
                          ),
                        ),
                        InkWell(
                          child: Text(
                            "تواصل معنا",
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: mainColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: h * 0.18,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
