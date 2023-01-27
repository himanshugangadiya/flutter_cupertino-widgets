import 'package:flutter/cupertino.dart';

class CupertinoDatePickerScreen extends StatefulWidget {
  const CupertinoDatePickerScreen({Key? key}) : super(key: key);

  @override
  State<CupertinoDatePickerScreen> createState() =>
      _CupertinoDatePickerScreenState();
}

class _CupertinoDatePickerScreenState extends State<CupertinoDatePickerScreen> {
  DateTime? pickDateTime;

  void showDatePicker() {
    showCupertinoModalPopup(
      context: context,
      builder: (context) {
        return SizedBox(
          height: 400,
          child: Column(
            children: [
              SizedBox(
                height: 300,
                child: CupertinoDatePicker(
                  onDateTimeChanged: (value) {
                    setState(() {
                      pickDateTime = value;
                    });
                  },
                  initialDateTime: DateTime.now(),
                ),
              ),
              CupertinoButton(
                child: Text("Ok"),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
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
          showDatePicker();
        },
        child: Text(pickDateTime!=null?pickDateTime.toString():'Pick Time'),
      ),
    ));
  }
}
