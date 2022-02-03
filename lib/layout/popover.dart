import 'package:flutter/material.dart';
import 'package:popover/popover.dart';
import 'package:school_app/modules/announcment/anouncment_details.dart';
import 'package:school_app/modules/announcment/anouncment_screen.dart';
import 'package:school_app/modules/messages/messages_screen.dart';
import 'package:school_app/shared/components/constants.dart';

class PopOver extends StatelessWidget {
  const PopOver({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return   Container(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: GestureDetector(
          child: Icon(Icons.notifications),
          onTap: () {
            showPopover(
              context: context,
              transitionDuration: const Duration(milliseconds: 150),
              bodyBuilder: (context) =>  ListView.separated(
                padding: const EdgeInsets.symmetric(vertical: 20),
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(0, 3),
                          color: Colors.grey,
                          blurRadius: 4,
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    width: double.infinity,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              Text(
                                "عنوان",
                                style: TextStyle(
                                    color: mainColor, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            "من شمنست منشتسه تصم شسمن انتسش ىوشسة ىءئن ىنشتلاسن كخه شسي شسي شسي شسي شس ي شسي  شس يشسي ص نيشسين شسنكيسي ضصه سشتن شستكمسشي شسمن ",
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
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AnouncmentDetails()));
                                },
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
                itemCount: 2,
              ),
              onPop: () => print('Popover was popped!'),
              direction: PopoverDirection.top,
              width: MediaQuery.of(context).size.width*0.90,
              height: MediaQuery.of(context).size.height*0.77,

              arrowHeight: 15,
              arrowWidth: 30,
            );
          },
        ),
      ),
    );

  }
}
