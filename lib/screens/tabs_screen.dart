import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../providers/cart.dart';
import 'package:provider/provider.dart';
import '../providers/meal.dart';
import '../screens/cart_screen.dart';
import '../screens/categories_screen.dart';
import '../widgets/main_drawer.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../screens/login_screen.dart';

class TabsScreen extends StatefulWidget {
  static const routeName = '/tabScreen';
  final List<Meal> cartMeals;

  TabsScreen(@required this.cartMeals);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Map<String, Widget>> _pages;
  int _selectedPageIndex = 0;

  @override
  void initState() {
    _pages = [
      {
        'page': CategoriesScreen(),
        'title': const Text('Categories'),
      },
      {
        'page': CartScreen(),
        'title': const Text('Your Cart'),
      },
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {});
    _selectedPageIndex = index;
  }

  @override
  Widget build(BuildContext context) {
    // final cart = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        title: _pages[_selectedPageIndex]['title'],
        actions: [
          IconButton(
            onPressed: () {
              FirebaseAuth.instance.signOut().then((value) {
                print("Signed Out");
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen()));
              });
            },
            icon: const Icon(
              Icons.logout_outlined,
              color: Colors.white,
            ),
          ),
        ],
      ),
      drawer: MainDrawer(),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).colorScheme.secondary,
        currentIndex: _selectedPageIndex,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Stack(
              children: [
                Center(
                  child: Consumer<Cart>(
                    builder: (context, cartData, child) => Badge(
                      badgeContent: Text(
                        cartData.itemCount.toString(),
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      animationDuration: const Duration(milliseconds: 300),
                      child: child,
                    ),
                    child: const Icon(CupertinoIcons.cart),
                  ),
                ),
              ],
            ),
            label: 'Cart',
          ),
        ],
        backgroundColor: Colors.indigo,
      ),
    );
  }
}
