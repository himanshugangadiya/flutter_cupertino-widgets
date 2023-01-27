import 'package:flutter/cupertino.dart';


class CupertinoTextFieldScreen extends StatefulWidget {
  const CupertinoTextFieldScreen({Key? key}) : super(key: key);

  @override
  State<CupertinoTextFieldScreen> createState() => _CupertinoTextFieldScreenState();
}

class _CupertinoTextFieldScreenState extends State<CupertinoTextFieldScreen> {

  late final TextEditingController _textEditingController =
  TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //  _textEditingController = TextEditingController(text: 'Enter Email');
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    // _textEditingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  CupertinoPageScaffold(
      child: Center(
        child: FractionallySizedBox(
          widthFactor: 0.9,
          child: CupertinoTextField(
            placeholder: 'Enter Name',
            controller: _textEditingController,
            prefix: Icon(CupertinoIcons.person),
            // expands: true,
            // minLines: null,
            // maxLines: null,
            suffix: Icon(CupertinoIcons.check_mark_circled),
            // keyboardType: TextInputType.number,
            // textAlignVertical: TextAlignVertical.top,
            // textAlign: TextAlign.center,
            // toolbarOptions: ToolbarOptions(copy: false,cut: false,paste: false,selectAll: false),
            // textCapitalization: TextCapitalization.words,
            // suffixMode: OverlayVisibilityMode.editing,
            // obscureText: true,
            textInputAction: TextInputAction.send,
            maxLength: 10,
            //enabled: false,
          ),
        ),
      ),
    );
  }
}
