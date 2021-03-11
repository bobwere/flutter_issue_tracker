import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

class BallLoadingIndicator extends StatelessWidget {
  const BallLoadingIndicator({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      child: LoadingIndicator(
        indicatorType: Indicator.ballRotateChase,
        colors: [
          Color(0xFF428CED),
          Color(0xFFF4A55F),
        ],
      ),
    );
  }
}
