import 'package:flutter/material.dart';
import 'package:flutter_issue_tracker/presentation/pages/setting_page.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class SettingButtonWidget extends StatelessWidget {
  const SettingButtonWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      key: const Key('navigatetosettingbutton'),
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return SettingPage();
          }),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Icon(
          LineAwesomeIcons.cog,
          color: Color(0xFF454545),
          size: 27,
        ),
      ),
    );
  }
}
