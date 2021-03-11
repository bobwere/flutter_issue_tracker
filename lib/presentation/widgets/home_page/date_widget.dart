import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';

class DateWidget extends StatelessWidget {
  const DateWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final todaysDate = Jiffy(DateTime.now()).format('EEEE, d MMMM');
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Today',
          style: TextStyle(
              color: Color(0xFF313131),
              fontFamily: 'Poppins',
              fontSize: 22,
              fontWeight: FontWeight.w600),
        ),
        Text(
          todaysDate,
          style: TextStyle(
              color: Color(0xFF858585),
              fontFamily: 'Poppins',
              fontSize: 18,
              fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
