import 'package:flutter/cupertino.dart';

class CupertinoSliderScreen extends StatefulWidget {
  const CupertinoSliderScreen({Key? key}) : super(key: key);

  @override
  State<CupertinoSliderScreen> createState() => _CupertinoSliderScreenState();
}

class _CupertinoSliderScreenState extends State<CupertinoSliderScreen> {
  double currentValue = 0;
  String? sliderValue;

  @override
  Widget build(BuildContext context) {
    return  CupertinoPageScaffold(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: CupertinoSlider(
              value: currentValue,
              //thumbColor: CupertinoColors.darkBackgroundGray,
              divisions: 5,
              max: 100,
              onChangeEnd: (value) {
                setState(() {
                  sliderValue = 'Finished Sliding';
                });
              },
              onChangeStart: (value) {
                setState(() {
                  sliderValue = 'Sliding';
                });
              },
              onChanged: (value) {
                setState(() {
                  currentValue = value;
                });
              },
            ),
          ),
          Text(
            sliderValue ?? '',
            style: CupertinoTheme.of(context)
                .textTheme
                .textStyle
                .copyWith(fontSize: 12),
          ),
        ],
      ),
    );
  }
}
