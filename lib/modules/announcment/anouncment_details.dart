import 'package:flutter/material.dart';

class AnouncmentDetails extends StatelessWidget {
  const AnouncmentDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(title: const Text('عنوان'),),
        body: Column(),
      ),
    );
  }
}
