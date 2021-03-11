import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_issue_tracker/bloc/search_bloc.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter_issue_tracker/common/constants/theme.dart';
import 'package:flutter_issue_tracker/presentation/widgets/home_page/issue_card_widget.dart';
import 'package:flutter_issue_tracker/presentation/widgets/shared/loading_indicator.dart';

class IssuesListWidget extends StatelessWidget {
  const IssuesListWidget({Key key, @required this.scrollController})
      : super(key: key);

  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocListener<SearchBloc, SearchState>(
        listenWhen: (previousState, currentState) {
          return previousState.state != currentState.state ||
              previousState.sortBy != currentState.sortBy ||
              previousState.searchTerm != currentState.searchTerm ||
              previousState.label != currentState.label;
        },
        listener: (context, state) {
          if (scrollController.hasClients) scrollController.jumpTo(0.0);
        },
        child: BlocBuilder<SearchBloc, SearchState>(
          buildWhen: (SearchState p, SearchState c) {
            return p.searchResults != c.searchResults ||
                p.isFetchingInitial != c.isFetchingInitial;
          },
          builder: (context, state) {
            if (state.isFetchingInitial) {
              return Center(child: BallLoadingIndicator());
            } else if (!state.isFetchingInitial &&
                state.searchResults.isEmpty &&
                state.errorMessage == '') {
              return Padding(
                key: const Key('nosearchresultsfound'),
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AspectRatio(
                      aspectRatio: 16.0 / 7.8,
                      child: Image.asset(
                        'assets/images/no_results.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'No Results found for your search...',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xFF454545),
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              );
            } else if (!state.isFetchingInitial &&
                state.errorMessage == 'no internet') {
              return Container(
                key: const Key('nointernet'),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        AspectRatio(
                          aspectRatio: 16.0 / 6.4,
                          child: Image.asset(
                            'assets/images/no_internet.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Poor or no internet connection\nKindly Retry',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color(0xFF454545),
                              fontFamily: 'Poppins',
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                        FlatButton(
                          color: flutterIssueTrackerTheme.primaryColor,
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                          child: Text(
                            'Try Again',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          onPressed: () {
                            context
                                .read<SearchBloc>()
                                .add(FetchInitialSearchResults());
                          },
                        )
                      ],
                    ),
                  ),
                ),
              );
            } else if (!state.isFetchingInitial &&
                state.errorMessage == 'server failure') {
              return Container(
                key: const Key('serverfailure'),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        AspectRatio(
                          aspectRatio: 16.0 / 6.4,
                          child: Image.asset(
                            'assets/images/server_failure.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Something went wrong\nKindly Retry',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color(0xFF454545),
                              fontFamily: 'Poppins',
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                        FlatButton(
                          color: flutterIssueTrackerTheme.primaryColor,
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                          child: Text(
                            'Try Again',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          onPressed: () {
                            context
                                .read<SearchBloc>()
                                .add(FetchInitialSearchResults());
                          },
                        )
                      ],
                    ),
                  ),
                ),
              );
            } else {
              final issues = state.searchResults ?? BuiltList([]);

              return ListView.builder(
                key: const Key('issueslist'),
                controller: scrollController,
                itemCount: state.searchHasNextPage
                    ? state.searchResults.length + 1
                    : state.searchResults.length,
                padding: EdgeInsets.symmetric(vertical: 10),
                itemBuilder: (context, index) {
                  return index >= state.searchResults.length
                      ? Center(child: BallLoadingIndicator())
                      : IssueCard(issues: issues[index].node);
                },
              );
            }
          },
        ),
      ),
    );
  }
}
