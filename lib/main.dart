import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widget/cupertino_widgets/cupertinoactionsheet_screen.dart';
import 'package:widget/cupertino_widgets/cupertinoactivityindicator_screen.dart';
import 'package:widget/cupertino_widgets/cupertinoalertdialog_screen.dart';
import 'package:widget/cupertino_widgets/cupertinobutton_screen.dart';
import 'package:widget/cupertino_widgets/cupertinocontextmenu_screen.dart';
import 'package:widget/cupertino_widgets/cupertinodatepicker_screen.dart';
import 'package:widget/cupertino_widgets/cupertinonavigationbar_screen.dart';
import 'package:widget/cupertino_widgets/cupertinopagescaffold_screen.dart';
import 'package:widget/cupertino_widgets/cupertinopopupsurface_screen.dart';
import 'package:widget/cupertino_widgets/cupertinoscrollbar_screen.dart';
import 'package:widget/cupertino_widgets/cupertinosegmentedcontrol_screen.dart';
import 'package:widget/cupertino_widgets/cupertinoslidingsegmentedcontrol_screen.dart';
import 'package:widget/cupertino_widgets/cupertinoslivernavigationbar_screen.dart';

import 'cupertino_widgets/cupertinopicker_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      color: Colors.black87,
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(
        brightness: Brightness.light,
      ),
      home: CupertinoButtonScreen(),
    );
  }
}
