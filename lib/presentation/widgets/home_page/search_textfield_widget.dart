import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_issue_tracker/bloc/search_bloc.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class SearchTextFieldWidget extends StatelessWidget {
  const SearchTextFieldWidget({Key key, @required this.textEditingController})
      : super(key: key);

  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) {
        return Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric(horizontal: 10),
          padding: EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
            color: Color(0xFFECF3F9),
            borderRadius: BorderRadius.all(
              Radius.circular(100),
            ),
          ),
          child: Row(children: [
            Icon(
              LineAwesomeIcons.search,
              size: 25,
              color: Color(0xFF5883A1),
            ),
            SizedBox(width: 10),
            Expanded(
              child: TextField(
                key: const Key('searchfield'),
                controller: textEditingController,
                textInputAction: TextInputAction.search,
                onSubmitted: (_) {
                  context
                      .read<SearchBloc>()
                      .add(SearchTermChanged(term: textEditingController.text));
                },
                onChanged: (_) {
                  context
                      .read<SearchBloc>()
                      .add(SearchTermChanged(term: textEditingController.text));
                },
                autocorrect: false,
                cursorColor: Color(0xFF5883A1),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search',
                  hintStyle: TextStyle(
                    color: Color(0xFF437AA1),
                  ),
                ),
              ),
            )
          ]),
        );
      },
    );
  }
}
