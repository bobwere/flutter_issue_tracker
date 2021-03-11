import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_issue_tracker/bloc/search_bloc.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class FilterByDropDown extends StatefulWidget {
  FilterByDropDown({Key key, @required this.items}) : super(key: key);
  final List<String> items;

  @override
  _FilterByDropDownState createState() => _FilterByDropDownState();
}

class _FilterByDropDownState extends State<FilterByDropDown> {
  String filterBy;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: EdgeInsets.only(left: 10),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
            key: const Key('filterbydropdown'),
            value: filterBy,
            isExpanded: true,
            icon: Icon(
              LineAwesomeIcons.chevron_circle_down,
              size: 17,
              color: Color(0xFF7B9CB4),
            ),
            hint: Text(
              "Filter By",
              style: TextStyle(
                  color: Color(0xFF7B9CB4),
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
            items: [...widget.items]
                .map(
                  (filterBy) => DropdownMenuItem(
                    value: filterBy,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '$filterBy',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          height: 1,
                          color: Color(0xFF7B9CB4),
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
            onChanged: (value) {
              setState(() {
                filterBy = value;
              });
              context.read<SearchBloc>().add(IssueStateChanged(state: value));
            }),
      ),
    );
  }
}
