import 'package:firebase_demoapp/BNB_screens/business_page.dart';
import 'package:firebase_demoapp/BNB_screens/home_page.dart';
import 'package:firebase_demoapp/BNB_screens/profile_page.dart';
import 'package:flutter/material.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({super.key});

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  int selectedIndex = 0;

  //final FirebasAnalytics analytics = FirebaseAnalytics.instance;

  static List pageNames = ['HomePage', 'BusinessPage', 'ProfilePage'];

  static const List<Widget> widgetOptions = <Widget>[
    HomePage(),
    BusinessPage(),
    ProfilePage(),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Firebase  Analytics'),
      ),
      body: Center(
        child: widgetOptions.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'HomePage'),
          BottomNavigationBarItem(
              icon: Icon(Icons.business), label: 'BusinessPage'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: 'ProfilePage'),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: (index) async {
          //await analytics.logEvent(
          //name: 'pages_Tracked',
          //parameters: {
          //"page_name": pageNames[index],
          //"page_index": index,
          //},
          //);
          setState(() => selectedIndex = index);
        },
      ),
    );
  }
}
