import 'package:flutter/material.dart';
import 'package:sneakers_app/components/my_bottom_nav.dart';
import 'package:sneakers_app/components/my_custom_drawer.dart';
import 'package:sneakers_app/screens/cart_screen.dart';
import 'package:sneakers_app/screens/shop_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // selected index to contrl bottom nav bar
  int _selectedIndex = 0;

  // the method which update the selected index of bottom nac bar when tap on it
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // list of screens display through bottom nav bar
  final List<Widget> _screens = [
    // shop screen
    ShopScreen(),
    // cart screen
    CartScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: Text(getTitle(_selectedIndex),style: TextStyle(color: Theme.of(context).colorScheme.primary),),
        centerTitle: true,
        leading: Builder(
          builder:(context) => Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(Icons.menu),
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
      ),
      bottomNavigationBar: MyBottomNav(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      drawer: MyCustomDrawer(),
      body: _screens[_selectedIndex],
    );
  }

  String getTitle(int index){
    switch(index){
      case 0:
        return 'Shop';
      case 1:
        return 'Cart';
      default:
        return 'Home';
    }
  }
}
