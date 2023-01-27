import 'package:flutter/cupertino.dart';


class CupertinoPageScaffoldScreen extends StatefulWidget {
  const CupertinoPageScaffoldScreen({Key? key}) : super(key: key);

  @override
  State<CupertinoPageScaffoldScreen> createState() =>
      _CupertinoPageScaffoldScreenState();
}

class _CupertinoPageScaffoldScreenState
    extends State<CupertinoPageScaffoldScreen> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text("Cupertino"),
      ),
      // backgroundColor: Colors.teal,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CupertinoButton(
              child: const Icon(CupertinoIcons.add),
              onPressed: () {
                setState(() {
                  count++;
                });
              }),
          Center(
            child: Text("$count"),
          ),
          CupertinoButton(
            child: const Text("Next"),
            onPressed: () { },
          ),
        ],
      ),
    );
  }
}
