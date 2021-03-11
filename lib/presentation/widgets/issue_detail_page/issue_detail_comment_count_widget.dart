import 'package:flutter/material.dart';

class IssueDetailCommentCountWidget extends StatelessWidget {
  const IssueDetailCommentCountWidget({Key key, @required this.totalCount})
      : super(key: key);
  final int totalCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Text(
        'Comments (${totalCount.toString()})',
        style: TextStyle(
            color: Color(0xFF313131),
            fontFamily: 'Poppins',
            fontSize: 16,
            fontWeight: FontWeight.w500),
      ),
    );
  }
}
