import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoSlidingSegmentedControlScreen extends StatefulWidget {
  const CupertinoSlidingSegmentedControlScreen({Key? key}) : super(key: key);

  @override
  State<CupertinoSlidingSegmentedControlScreen> createState() =>
      _CupertinoSlidingSegmentedControlScreenState();
}

class _CupertinoSlidingSegmentedControlScreenState
    extends State<CupertinoSlidingSegmentedControlScreen> {
  Map<int, Widget> map = {
    0: Text("One"),
    1: Text("Two"),
    2: Text("Three"),
  };

  int selectedValue = 0;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("Cupertino Sliding Segment Control"),
      ),
      child: Material(
        child: Container(
          margin: EdgeInsets.only(top: 100, left: 20, right: 20),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                child: CupertinoSlidingSegmentedControl(
                  //thumbColor: CupertinoColors.systemIndigo,
                  //backgroundColor: CupertinoColors.systemOrange,
                  onValueChanged: (value) {
                    setState(() {
                      selectedValue = value as int;
                    });
                  },
                  children: map,
                  groupValue: selectedValue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
