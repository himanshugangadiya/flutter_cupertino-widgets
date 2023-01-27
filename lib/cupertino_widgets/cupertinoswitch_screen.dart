import 'package:flutter/cupertino.dart';


class CupertinoSwitchScreen extends StatefulWidget {
  const CupertinoSwitchScreen({Key? key}) : super(key: key);

  @override
  State<CupertinoSwitchScreen> createState() => _CupertinoSwitchScreenState();
}

class _CupertinoSwitchScreenState extends State<CupertinoSwitchScreen> {
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
          child: CupertinoSwitch(
        onChanged: (value) {
          setState(() {
            isOn = value;
          });
        },
        //thumbColor: Colors.lightBlueAccent,
        // trackColor: CupertinoColors.activeBlue.withOpacity(0.2),
        // activeColor: CupertinoColors.activeOrange,
        value: isOn,
      )),
    );
  }
}
