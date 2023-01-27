import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoSegmentControlScreen extends StatefulWidget {
  const CupertinoSegmentControlScreen({Key? key}) : super(key: key);

  @override
  State<CupertinoSegmentControlScreen> createState() =>
      _CupertinoSegmentControlScreenState();
}

class _CupertinoSegmentControlScreenState
    extends State<CupertinoSegmentControlScreen> {
  Map<int, Widget> map = const{
    0: Expanded(
      child: Text("One"),
    ),
    1: Expanded(
      child: Text("Two"),
    ),
    2: Expanded(
      child: Text("Three"),
    ),
  };

  int selectedValue = 0;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          middle: Text("Flutter Cupertino Segmented Control"),
        ),
        child: Material(
          child: Container(
            margin: const EdgeInsets.only(top: 100, right: 20, left: 20),
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: CupertinoSegmentedControl(
                    //selectedColor:  CupertinoColors.activeGreen,
                    //unselectedColor:  CupertinoColors.activeGreen,
                    //borderColor: CupertinoColors.activeGreen,
                    //pressedColor:  CupertinoColors.activeGreen,
                    children: map,
                    groupValue: selectedValue,
                    onValueChanged: (value) {
                      setState(() {
                        selectedValue = value as int;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
