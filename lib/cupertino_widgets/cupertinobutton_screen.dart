import 'dart:developer';

import 'package:flutter/cupertino.dart';

class CupertinoButtonScreen extends StatefulWidget {
  const CupertinoButtonScreen({Key? key}) : super(key: key);

  @override
  State<CupertinoButtonScreen> createState() => _CupertinoButtonScreenState();
}

class _CupertinoButtonScreenState extends State<CupertinoButtonScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: CupertinoButton.filled(
          onPressed: () {},

          //pressedOpacity: 0.8,
          // minSize: 50,
          disabledColor: CupertinoColors.activeGreen,
          //alignment: Alignment.topLeft,
          // borderRadius: BorderRadius.circular(10),
          //padding: EdgeInsets.only(left: 40,right: 40),
          child: const Text("Button"),
        ),

        /* CupertinoButton.filled(
          onPressed: () {
            log("message---------------------");
          },
          child: Text("Button"),
        ),*/
      ),
    );
  }
}
