import 'package:flutter/cupertino.dart';


class CupertinoContextMenuScreen extends StatefulWidget {
  const CupertinoContextMenuScreen({Key? key}) : super(key: key);

  @override
  State<CupertinoContextMenuScreen> createState() =>
      _CupertinoContextMenuScreenState();
}

class _CupertinoContextMenuScreenState
    extends State<CupertinoContextMenuScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: CupertinoContextMenu(
          previewBuilder: (context, animation, child) {
            return FittedBox(
              fit: BoxFit.cover,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(64.0 * animation.value),
                child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSJhvqOQbBIdAUfJeLlzYPcib8U1Iuhpv4se5wUp5npdpQ3PpItEtDuAgkEAS_1G5OImQ&usqp=CAU"),
              ),
            );
          },
          actions: [
            CupertinoContextMenuAction(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Action one'),
            ),
            CupertinoContextMenuAction(
              onPressed: () {
                Navigator.pop(context);
              },
              isDestructiveAction: true,
              child: const Text('Action Two'),
            ),
          ],
          child: FittedBox(
            fit: BoxFit.cover,
            child: Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSJhvqOQbBIdAUfJeLlzYPcib8U1Iuhpv4se5wUp5npdpQ3PpItEtDuAgkEAS_1G5OImQ&usqp=CAU"),
          ),
        ),
      ),
    );
  }
}
