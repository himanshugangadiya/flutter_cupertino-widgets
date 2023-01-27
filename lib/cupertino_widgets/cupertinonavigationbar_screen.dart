import 'package:flutter/cupertino.dart';

class CupertinoNavigationBarScreen extends StatefulWidget {
  const CupertinoNavigationBarScreen({Key? key}) : super(key: key);

  @override
  State<CupertinoNavigationBarScreen> createState() =>
      _CupertinoNavigationBarScreenState();
}

class _CupertinoNavigationBarScreenState
    extends State<CupertinoNavigationBarScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text("Cupertino NavigationBar"),
        leading: CupertinoNavigationBarBackButton(
          onPressed: () {},
          color: CupertinoColors.white,
        ),
        //brightness: Brightness.dark,
        backgroundColor: CupertinoColors.systemGrey.withOpacity(0.5),
      ),
      child: const Text(''),
    );
  }
}
