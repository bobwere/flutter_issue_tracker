import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';

class IssueDetailBodyWidget extends StatelessWidget {
  const IssueDetailBodyWidget(
      {Key key,
      @required this.photoURI,
      @required this.author,
      @required this.title,
      @required this.body,
      @required this.date})
      : super(key: key);
  final String photoURI;
  final String author;
  final String title;
  final String body;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 15,
                    backgroundImage: NetworkImage(photoURI),
                  ),
                  SizedBox(width: 10),
                  Text(
                    author,
                    style: TextStyle(
                        color: Color(0xFF313131),
                        fontFamily: 'Poppins',
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Text(
                Jiffy(date).fromNow(),
                style: TextStyle(
                    color: Color(0xFF313131),
                    fontFamily: 'Poppins',
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            title,
            style: TextStyle(
                color: Color(0xFF313131),
                fontFamily: 'Poppins',
                fontSize: 16,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            body,
            style: TextStyle(
                color: Color(0xFF444444),
                fontFamily: 'Poppins',
                fontSize: 14,
                fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
