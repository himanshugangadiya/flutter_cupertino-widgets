import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoScrollBarScreen extends StatefulWidget {
  const CupertinoScrollBarScreen({Key? key}) : super(key: key);

  @override
  State<CupertinoScrollBarScreen> createState() =>
      _CupertinoScrollBarScreenState();
}

class _CupertinoScrollBarScreenState extends State<CupertinoScrollBarScreen> {
  List item = List.generate(30, (index) => 'this is $index');

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CupertinoScrollbar(
        thickness: 10,
        thicknessWhileDragging: 15,
        isAlwaysShown: true,
        //radiusWhileDragging: Radius.circular(10),
        radius: const Radius.circular(5),
        child: ListView.builder(
          itemBuilder: (context, index) => Material(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ListTile(
                  title: Text(item[index]),
                ),
                const Divider(
                  height: 1,
                ),
              ],
            ),
          ),
          itemCount: item.length,
        ),
      ),
    );
  }
}
