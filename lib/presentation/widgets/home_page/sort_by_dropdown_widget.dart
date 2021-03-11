import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_issue_tracker/bloc/search_bloc.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class SortByDropDown extends StatefulWidget {
  SortByDropDown({Key key, @required this.items}) : super(key: key);
  final List<String> items;

  @override
  _SortByDropDownState createState() => _SortByDropDownState();
}

class _SortByDropDownState extends State<SortByDropDown> {
  String sortBy;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: EdgeInsets.only(left: 10),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
            key: const Key('sortbydropdown'),
            value: sortBy,
            icon: Icon(
              LineAwesomeIcons.chevron_circle_down,
              size: 17,
              color: Color(0xFF7B9CB4),
            ),
            isExpanded: true,
            hint: Text(
              "Sort By",
              style: TextStyle(
                  color: Color(0xFF7B9CB4),
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
            items: [...widget.items]
                .map((sortBy) => DropdownMenuItem(
                      value: sortBy,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '$sortBy',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            height: 1,
                            color: Color(0xFF7B9CB4),
                          ),
                        ),
                      ),
                    ))
                .toList(),
            onChanged: (value) {
              setState(() {
                sortBy = value;
              });
              context.read<SearchBloc>().add(SortByChanged(sortBy: value));
            }),
      ),
    );
  }
}
