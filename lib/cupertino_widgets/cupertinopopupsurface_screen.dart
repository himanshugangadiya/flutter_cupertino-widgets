import 'package:flutter/cupertino.dart';


class CupertinoPopupSurfaceScreen extends StatefulWidget {
  const CupertinoPopupSurfaceScreen({Key? key}) : super(key: key);

  @override
  State<CupertinoPopupSurfaceScreen> createState() =>
      _CupertinoPopupSurfaceScreenState();
}

class _CupertinoPopupSurfaceScreenState
    extends State<CupertinoPopupSurfaceScreen> {
  void showPopupSurface() {
    showCupertinoModalPopup(
      context: context,
      builder: (context) {
        return CupertinoPopupSurface(
          child: Container(
            padding: const EdgeInsetsDirectional.all(20),
            color: CupertinoColors.white,
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).copyWith().size.height * 0.35,
            child: Column(
              children: const [
                Text(
                  "Cupertino Popup Surface Example",
                  style: TextStyle(
                    backgroundColor: CupertinoColors.white,
                    fontSize: 23,
                  ),
                ),

              ],
            ),
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
            showPopupSurface();
          },
          child: const Text("select"),
        ),
      ),
    );
  }
}
