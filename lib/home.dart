
import 'package:flutter/material.dart';
import 'card1.dart';
import 'card2.dart';
import 'card3.dart';

// 1
class Home extends StatefulWidget 
{
  const Home({super.key});
  @override
  HomeState createState() => HomeState();
}
class HomeState extends State<Home> 
{
  int _selectedIndex = 0;
  static List<Widget> pages = <Widget>
  [
    const Card1(),
    const Card2(),
    const Card3(),
  ];
  void _onItemTapped(int index) 
  {
    setState(() 
    {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      appBar: AppBar
      (
        title: Text
        (
          'Fooderlich',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      // TODO: Show selected tab
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar
      (
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
        // 10
        currentIndex: _selectedIndex,
        // 11
        onTap: _onItemTapped,
        items: const 
        [
          BottomNavigationBarItem
          (
            icon: Icon(Icons.card_giftcard),
            label: 'Card',
          ),
          BottomNavigationBarItem
          (
            icon: Icon(Icons.card_giftcard),
            label: 'Card2',
          ),
          BottomNavigationBarItem
          (
            icon: Icon(Icons.card_giftcard),
            label: 'Card3',
          ),
        ],
      ),
    );
  }
}