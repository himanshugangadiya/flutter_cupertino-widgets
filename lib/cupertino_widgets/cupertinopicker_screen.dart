import 'package:flutter/cupertino.dart';

class CupertinoPickerScreen extends StatefulWidget {
  const CupertinoPickerScreen({Key? key}) : super(key: key);

  @override
  State<CupertinoPickerScreen> createState() => _CupertinoPickerScreenState();
}

class _CupertinoPickerScreenState extends State<CupertinoPickerScreen> {
  List<Widget> countries = const [
    Text("India"),
    Text("China"),
    Text("Pakistan"),
    Text("Uk"),
    Text("Usa"),
    Text("India"),
    Text("China"),
    Text("Pakistan"),
    Text("Uk"),
    Text("Usa"),
  ];
  String selectedValue = '';

  void showPicker() {
    showCupertinoModalPopup(
      context: context,
      builder: (context) => Container(
        color: CupertinoColors.systemBackground,
        height: MediaQuery.of(context).size.height*0.25,
        child: CupertinoPicker(
            itemExtent: 45,
            diameterRatio: 1,
            //backgroundColor: CupertinoColors.activeOrange,
            //offAxisFraction: 0.5,
            //magnification: 1,
            squeeze: 1.45,
            looping: true,
            selectionOverlay: const CupertinoPickerDefaultSelectionOverlay(
              background: CupertinoColors.tertiaryLabel,
            ),
            onSelectedItemChanged: (value) {
              selectedValue = countries[value].toString();
            },
            children: countries),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: CupertinoButton(
          onPressed: () {
            showPicker();
          },
          child: Text("show Picker"),
        ),
      ),
    );
  }
}
