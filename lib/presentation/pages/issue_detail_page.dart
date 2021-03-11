import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_issue_tracker/common/constants/theme.dart';
import 'package:flutter_issue_tracker/data/repository/graphql_client.dart';
import 'package:flutter_issue_tracker/presentation/widgets/issue_detail_page/issue_detail_body_widget.dart';
import 'package:flutter_issue_tracker/presentation/widgets/issue_detail_page/issue_detail_comment_count_widget.dart';
import 'package:flutter_issue_tracker/presentation/widgets/issue_detail_page/issue_detail_header_widget.dart';
import 'package:jiffy/jiffy.dart';

class IssueDetailPage extends StatelessWidget {
  const IssueDetailPage({Key key, @required this.issue}) : super(key: key);
  final GFetchSearchResultsData_search_edges_node__asIssue issue;

  @override
  Widget build(BuildContext context) {
    var photoURI = issue.author != null
        ? issue.author.avatarUrl.value
        : 'https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1489&q=80';

    var number = issue.number ?? 0;

    var author = issue.author != null ? issue.author.login : '';
    ;
    var title = issue.title ?? '';

    var date = issue.createdAt.value;

    var body = issue.body ?? '';

    var totalCommentCount =
        issue.comments != null ? issue.comments.totalCount : 0;

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: colorScheme.primaryVariant,
      ),
      child: Scaffold(
        backgroundColor: Color(0xFFECF3F9),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //Header
              IssueDetailHeaderWidget(number: number),

              Expanded(
                child: ListView(
                  padding: EdgeInsets.only(bottom: 20),
                  children: [
                    //Issue Body author name, photo, body, and createdAt
                    IssueDetailBodyWidget(
                        author: author,
                        photoURI: photoURI,
                        date: date,
                        title: title,
                        body: body),

                    SizedBox(height: 20),

                    //Number of comments widget
                    IssueDetailCommentCountWidget(
                      totalCount: totalCommentCount,
                    ),

                    //List of comments to be displayed
                    ...listOfCommentsWidgets(issue)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

List<Widget> listOfCommentsWidgets(
    GFetchSearchResultsData_search_edges_node__asIssue issue) {
  List<Widget> comments = [];

  for (var comment in issue.comments.edges) {
    var photoURI;
    var author;

    if (comment.node.author != null) {
      author = comment.node.author.login;
      photoURI = comment.node.author.avatarUrl.value;
    } else {
      author = '';
      photoURI =
          'https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1489&q=80';
    }

    var commentWidget = Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Container(
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
                          radius: 15, backgroundImage: NetworkImage(photoURI)),
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
                    Jiffy(issue.comments.edges[0].node.createdAt.value)
                        .fromNow(),
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
                '${comment.node.body}',
                style: TextStyle(
                    color: Color(0xFF444444),
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ],
    );

    comments.add(commentWidget);
  }

  return comments;
}
