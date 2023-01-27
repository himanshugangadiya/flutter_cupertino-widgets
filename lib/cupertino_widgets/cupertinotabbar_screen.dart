import 'package:flutter/cupertino.dart';

class CupertinoTabBarScreen extends StatefulWidget {
  const CupertinoTabBarScreen({Key? key}) : super(key: key);

  @override
  State<CupertinoTabBarScreen> createState() => _CupertinoTabBarScreenState();
}

class _CupertinoTabBarScreenState extends State<CupertinoTabBarScreen> {
  int currentIndex = 0;

  List pages = const[
    Icon(CupertinoIcons.home, size: 35),
    Icon(CupertinoIcons.profile_circled, size: 35),
    Icon(CupertinoIcons.settings, size: 35),
  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        iconSize: 28,
        activeColor: CupertinoColors.systemYellow,
        //height: 100,
        //backgroundColor: Colors.lightGreen,
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(CupertinoIcons.home),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(CupertinoIcons.profile_circled),
          ),
          BottomNavigationBarItem(
            label: 'settings',
            icon: Icon(CupertinoIcons.settings),
          ),
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        return CupertinoTabView(
          builder: (context) => pages[index],
        );
      },
    );
  }
}
