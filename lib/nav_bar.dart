import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test_app/Screens/audio_bible_screen.dart';
import 'package:test_app/Screens/bible_screen.dart';
import 'package:test_app/constants.dart';
import 'package:test_app/Screens/home_screen.dart';
import 'package:test_app/Screens/music_screen.dart';
import 'package:test_app/Screens/setting_screen.dart';

class NavBarHandler extends StatefulWidget {
  const NavBarHandler({super.key});

  @override
  State<NavBarHandler> createState() => _NavBarHandlerState();
}

class _NavBarHandlerState extends State<NavBarHandler> {
  int selectedIndex = 2;
  Map<int, GlobalKey<NavigatorState>> navigatorKeys = {
    0: GlobalKey<NavigatorState>(),
    1: GlobalKey<NavigatorState>(),
    2: GlobalKey<NavigatorState>(),
    3: GlobalKey<NavigatorState>(),
    4: GlobalKey<NavigatorState>(),
  };

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
    // Navigator.push(context,
    //     MaterialPageRoute(builder: (context) => pageOptions[selectedIndex]));
  }

  static const List<Widget> pageOptions = <Widget>[
    BibleScreen(),
    AudioBible(),
    HomeScreen(),
    MusicScreen(),
    SettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10), topRight: Radius.circular(10)),
        child: BottomNavigationBar(
          backgroundColor: majorColour,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: onItemTapped,
          currentIndex: selectedIndex,
          selectedItemColor: Colors.yellow,
          unselectedItemColor: Colors.white,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: FaIcon(
                  FontAwesomeIcons.bookOpen,
                ),
                label: 'Book'),
            BottomNavigationBarItem(
                icon: FaIcon(
                  FontAwesomeIcons.play,
                ),
                label: 'Song'),
            BottomNavigationBarItem(
                icon: FaIcon(
                  FontAwesomeIcons.house,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: FaIcon(
                  FontAwesomeIcons.music,
                ),
                label: 'Music'),
            BottomNavigationBarItem(
                icon: FaIcon(
                  FontAwesomeIcons.gear,
                ),
                label: 'Settings')
          ],
        ),
      ),
      body: buildNavigator(),
    );
  }

  buildNavigator() {
    return Navigator(
      key: navigatorKeys[selectedIndex],
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            builder: (_) => pageOptions.elementAt(selectedIndex));
      },
    );
  }
}
