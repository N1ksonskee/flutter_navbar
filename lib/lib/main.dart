import 'package:flutter/material.dart';
import 'package:flutter_navbar/lib/ui/pages/profile_page.dart';
import 'ui/pages/briefcase_page.dart';
import 'ui/pages/market_page.dart';



void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Screen(),
    );
  }
}



class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    BriefcasePage(),
    MarketPage(),
    ProfilePage(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(

      ),
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.corporate_fare),
            label: 'Briefcase',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.corporate_fare),
            label: 'Market',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.verified_user),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
      ),
    );
  }
}
