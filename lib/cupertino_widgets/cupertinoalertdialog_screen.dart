import 'package:flutter/cupertino.dart';

class CupertinoAlertDialogScreen extends StatefulWidget {
  const CupertinoAlertDialogScreen({Key? key}) : super(key: key);

  @override
  State<CupertinoAlertDialogScreen> createState() =>
      _CupertinoAlertDialogScreenState();
}

class _CupertinoAlertDialogScreenState
    extends State<CupertinoAlertDialogScreen> {
  void showAlertDialog() {
    showCupertinoModalPopup(
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          insetAnimationDuration: const Duration(milliseconds: 100),
          insetAnimationCurve: Curves.bounceIn,
          title: const Text("Alert"),
          content: const Text("Proceed with destructive action?"),
          actions: [
            CupertinoDialogAction(
          /*textStyle: TextStyle(
                fontWeight: FontWeight.bold,
              ),*/
              onPressed: () {
                Navigator.pop(context);
              },
              isDestructiveAction: true,
              child: const Text('No'),
            ),
            CupertinoDialogAction(
              onPressed: () {
                Navigator.pop(context);
              },
              isDefaultAction: true,
              child: const Text("Yes"),
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
          child: const Text("AlertDialog"),
          onPressed: () {
            showAlertDialog();
          },
        ),
      ),
    );
  }
}
