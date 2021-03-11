import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_issue_tracker/bloc/search_bloc.dart';
import 'package:flutter_issue_tracker/common/constants/strings.dart';
import 'package:flutter_issue_tracker/common/constants/theme.dart';
import 'package:flutter_issue_tracker/presentation/widgets/home_page/date_widget.dart';
import 'package:flutter_issue_tracker/presentation/widgets/home_page/filter_by_dropdown_widget.dart';
import 'package:flutter_issue_tracker/presentation/widgets/home_page/issues_list_widget.dart';
import 'package:flutter_issue_tracker/presentation/widgets/home_page/search_textfield_widget.dart';
import 'package:flutter_issue_tracker/presentation/widgets/home_page/setting_button_widget.dart';
import 'package:flutter_issue_tracker/presentation/widgets/home_page/sort_by_dropdown_widget.dart';
import 'package:flutter_issue_tracker/presentation/widgets/home_page/tag_dropdown_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _scrollThreshold = 200.0;
  ScrollController _scrollController;
  TextEditingController _searchTextController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _searchTextController = TextEditingController();
    _scrollController.addListener(_scrollListener);
  }

  _scrollListener() {
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.position.pixels;
    if (maxScroll - currentScroll <= _scrollThreshold) {
      context.read<SearchBloc>().add(FetchMoreSearchResults());
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: colorScheme.primaryVariant,
      ),
      child: Scaffold(
        backgroundColor: Color(0xFFECF3F9),
        body: SafeArea(
          child: Column(
            children: [
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    //date and setting row
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10, top: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //Date Widget
                          DateWidget(),
                          //Setting Button
                          SettingButtonWidget()
                        ],
                      ),
                    ),

                    SizedBox(
                      height: 20,
                    ),

                    //SearchBox textfield
                    SearchTextFieldWidget(
                      textEditingController: _searchTextController,
                    ),

                    SizedBox(
                      height: 10,
                    ),

                    //actionbar
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                                child: FilterByDropDown(items: [...filterBy])),
                            Expanded(child: SortByDropDown(items: [...sortBy])),
                            TagDropDown(),
                          ]),
                    ),
                  ],
                ),
              ),

              //List of data
              IssuesListWidget(scrollController: _scrollController)
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
