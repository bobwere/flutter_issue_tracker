import 'package:flutter/material.dart';
import 'package:flutter_issue_tracker/data/repository/graphql_client.dart';
import 'package:flutter_issue_tracker/presentation/pages/issue_detail_page.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:jiffy/jiffy.dart';

class IssueCard extends StatelessWidget {
  const IssueCard({Key key, this.issues}) : super(key: key);
  final GFetchSearchResultsData_search_edges_node issues;

  @override
  Widget build(BuildContext context) {
    GFetchSearchResultsData_search_edges_node__asIssue issue = issues;
    final String issueOpenedDate =
        Jiffy(issue.createdAt.value ?? DateTime.now()).fromNow();
    final String issueState = issue.state.name ?? 'OPEN';
    final author = issue.author != null ? issue.author.login : '';
    final number = issue.number ?? 454545;

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return IssueDetailPage(issue: issue);
          }),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        width: double.infinity,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Row of date and open button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Opened $issueOpenedDate',
                  style: TextStyle(
                      color: Color(0xFFA5A6A8),
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 1),
                  decoration: BoxDecoration(
                    color: issueState == 'OPEN'
                        ? Color(0xFF428CED)
                        : Color(0xFF2C2C2C),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Center(
                    child: Text(
                      issueState == 'OPEN' ? 'Open' : 'Closed' ?? 'Open',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                )
              ],
            ),

            SizedBox(
              height: 20,
            ),

            //Text
            RichText(
              maxLines: 20,
              overflow: TextOverflow.ellipsis,
              text: TextSpan(
                  text: issue.title ?? '_',
                  style: TextStyle(
                    color: Color(0xFF313131),
                    fontFamily: 'Poppins',
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' #${number.toString()}',
                      style: TextStyle(
                        color: Color(0xFFF4A55F),
                        fontFamily: 'Poppins',
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ]),
            ),

            Wrap(
              spacing: 4.0,
              runSpacing: 0.0,
              children:
                  List<Widget>.generate(issue.labels.edges.length, (int index) {
                var color = issue.labels.edges[index].node.color;
                var textColor = color == 'fcf2ae' ||
                        color == 'ffff00' ||
                        color == 'd4c5f9' ||
                        color == 'fef2c0' ||
                        color == 'FFFF00'
                    ? '2E2B2B'
                    : color;

                var name = issue.labels.edges[index].node.name;
                return Chip(
                  backgroundColor:
                      Color(int.tryParse('0xFF$color')).withOpacity(0.3),
                  label: Text('$name'),
                  labelStyle:
                      TextStyle(color: Color(int.tryParse('0xFF$textColor'))),
                );
              }).toList(),
            ),
            //Row of user and comments
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      LineAwesomeIcons.user,
                      color: Color(0xFFA2A5A6),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 120,
                      child: Text(
                        author,
                        maxLines: 1,
                        style: TextStyle(
                            color: Color(0xFFA2A5A6),
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      LineAwesomeIcons.comment,
                      color: Color(0xFFA2A5A6),
                    ),
                    SizedBox(width: 10),
                    Text(
                      '${issue.comments.totalCount} comments' ?? '0',
                      style: TextStyle(
                          color: Color(0xFFA2A5A6),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
