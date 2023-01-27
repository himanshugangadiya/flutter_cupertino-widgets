import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoActivityIndicatorScreen extends StatefulWidget {
  const CupertinoActivityIndicatorScreen({Key? key}) : super(key: key);

  @override
  State<CupertinoActivityIndicatorScreen> createState() =>
      _CupertinoActivityIndicatorScreenState();
}

class _CupertinoActivityIndicatorScreenState
    extends State<CupertinoActivityIndicatorScreen> {
  var value = 0.5;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: /*CupertinoActivityIndicator(),
*/
            CupertinoActivityIndicator.partiallyRevealed(
          radius: 13,
          color: Colors.teal,
          progress: value,
          // animating: true,
        ),
      ),
    );
  }
}
