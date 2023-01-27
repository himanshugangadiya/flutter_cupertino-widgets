import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoSliverNavigationBarScreen extends StatefulWidget {
  const CupertinoSliverNavigationBarScreen({Key? key}) : super(key: key);

  @override
  State<CupertinoSliverNavigationBarScreen> createState() =>
      _CupertinoSliverNavigationBarScreenState();
}

class _CupertinoSliverNavigationBarScreenState
    extends State<CupertinoSliverNavigationBarScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: [
          CupertinoSliverNavigationBar(
            leading: Material(
              child: IconButton(
                onPressed: () {},
                icon: Icon(CupertinoIcons.home),
              ),
            ),
            trailing: Material(
              child: IconButton(
                onPressed: () {},
                icon: Icon(CupertinoIcons.add),
              ),
            ),
            largeTitle: Text("Large title"),
            middle: Text("CupertinoSliver NavigationBar"),
          ),
          /* SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: Container(
                    color: Colors.blue,
                  ),
                );
              },
            ),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              //childAspectRatio: 0.5,
            ),
          ),*/
          SliverList(
            delegate: SliverChildListDelegate(
              List.generate(
                20,
                (index) => Card(
                  child: Container(
                    height: 100,
                    alignment: Alignment.center,
                    child: Text("$index"),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
