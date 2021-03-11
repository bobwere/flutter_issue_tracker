import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class IssueDetailHeaderWidget extends StatelessWidget {
  const IssueDetailHeaderWidget({Key key, @required this.number})
      : super(key: key);
  final int number;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
          key: const Key('issuedetailbackbutton'),
          onTap: () {
            Navigator.pop(context);
          },
          child: Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(2, 2),
                        blurRadius: 2,
                      )
                    ]),
                child: Center(
                  child: Icon(LineAwesomeIcons.arrow_left),
                ),
              ),
              SizedBox(width: 20),
              Text(
                'Issue Thread',
                style: TextStyle(
                    color: Color(0xFF313131),
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(width: 10),
              Text(
                '#$number',
                style: TextStyle(
                    color: Color(0xFFF4A55F),
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ],
          )),
    );
  }
}
