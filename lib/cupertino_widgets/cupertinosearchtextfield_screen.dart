import 'package:flutter/cupertino.dart';


class CupertinoSearchTextFieldScreen extends StatefulWidget {
  const CupertinoSearchTextFieldScreen({Key? key}) : super(key: key);

  @override
  State<CupertinoSearchTextFieldScreen> createState() => _CupertinoSearchTextFieldScreenState();
}

class _CupertinoSearchTextFieldScreenState extends State<CupertinoSearchTextFieldScreen> {
  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      child: Center(
        child: CupertinoSearchTextField(
          // backgroundColor: Colors.teal,
          // padding: EdgeInsetsDirectional.all(5),
          decoration: BoxDecoration(
            //color:CupertinoColors.activeOrange,
          ),
          suffixIcon: Icon(CupertinoIcons.airplane),
        ),
      ),
    );
  }
}
