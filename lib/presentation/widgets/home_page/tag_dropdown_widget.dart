import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_issue_tracker/bloc/search_bloc.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';

class TagDropDown extends StatefulWidget {
  TagDropDown({Key key}) : super(key: key);

  @override
  _TagDropDownState createState() => _TagDropDownState();
}

class _TagDropDownState extends State<TagDropDown> {
  List<String> _selectedTags;

  void _showMultiSelect(BuildContext context, SearchState state) async {
    await showDialog(
      context: context,
      builder: (ctx) {
        return MultiSelectDialog(
          items: state.labels.map((e) => MultiSelectItem(e, e)).toList(),
          initialValue: _selectedTags,
          onConfirm: (values) {
            setState(() {
              _selectedTags = values;
            });
            context.read<SearchBloc>().add(TagChanged(tag: values));
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) {
        return FlatButton(
          key: const Key('tagbydropdown'),
          onPressed: () {
            _showMultiSelect(context, state);
          },
          child: Container(
            height: 60,
            width: 100,
            padding: EdgeInsets.only(left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Tag',
                  style: TextStyle(
                      color: Color(0xFF7B9CB4),
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
                Icon(
                  LineAwesomeIcons.chevron_circle_down,
                  size: 17,
                  color: Color(0xFF7B9CB4),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
