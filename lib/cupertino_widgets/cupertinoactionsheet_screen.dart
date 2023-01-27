import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoActionSheetScreen extends StatefulWidget {
  const CupertinoActionSheetScreen({Key? key}) : super(key: key);

  @override
  State<CupertinoActionSheetScreen> createState() =>
      _CupertinoActionSheetScreenState();
}

class _CupertinoActionSheetScreenState
    extends State<CupertinoActionSheetScreen> {
  void showActionSheet(BuildContext context) {
    showCupertinoModalPopup(
      //barrierDismissible: false,
      //barrierColor: Colors.teal,
      context: context,
      builder: (context) {
        return CupertinoActionSheet(
          title: const Text("Title"),
          message: const Text("message"),
          cancelButton: CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Cancle"),
          ),
          actions: [
            CupertinoActionSheetAction(
              isDefaultAction: true,
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Default Action"),
            ),
            CupertinoActionSheetAction(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Action"),
            ),
            CupertinoActionSheetAction(
              isDestructiveAction: true,
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Destructive Action"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: CupertinoButton(
          onPressed: () {
            showActionSheet(context);
          },
          child: const Text("open actionsheet"),
        ),
      ),
    );
  }
}
