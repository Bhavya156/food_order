// ignore_for_file: prefer_const_constructors
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import './screens/login_screen.dart';
import './providers/cart.dart';
import 'package:provider/provider.dart';
import './providers/meal.dart';
import './providers/meals.dart';
import './screens/invoice_screen.dart';
import './screens/tabs_screen.dart';
import './screens/meal_detail_screen.dart';
import './screens/filters_screen.dart';
import './screens/category_meals_screen.dart';
import './screens/categories_screen.dart';
import './dummy_data.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  FirebaseAuth _auth;

  User _user;

  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _auth = FirebaseAuth.instance;
    _user = _auth.currentUser;
    isLoading = false;
  }

  Map<String, bool> _filters = {
    'jain': false,
    'spicy': false,
    'medium': false,
    'sweet': false,
  };
  List<Meal> _availableMeals = DUMMY_MEALS;
  final List<Meal> _cartMeals = [];

  void _setFilters(Map<String, bool> filterData) {
    setState(() {
      _filters = filterData;

      _availableMeals = DUMMY_MEALS.where((meal) {
        if (_filters['jain'] && !meal.isJain) {
          return false;
        }
        if (_filters['spicy'] && !meal.isSpicy) {
          return false;
        }
        if (_filters['medium'] && !meal.isMedium) {
          return false;
        }
        if (_filters['sweet'] && !meal.isSweet) {
          return false;
        }
        return true;
      }).toList();
    });
  }

  // void _toggleFavorite(String mealId) {
  //   final existingIndex =
  //       _favoriteMeals.indexWhere((meal) => meal.id == mealId);
  //   if (existingIndex >= 0) {
  //     setState(() {
  //       _favoriteMeals.removeAt(existingIndex);
  //     });
  //   } else {
  //     setState(() {
  //       _favoriteMeals.add(
  //         DUMMY_MEALS.firstWhere((meal) => meal.id == mealId),
  //       );
  //     });
  //   }
  // }

  // bool _isMealFavorite(String id) {
  //   return _favoriteMeals.any((meal) => meal.id == id);
  // }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Meals(),
        ),
        ChangeNotifierProvider(
          create: (context) => Cart(),
        ),
      ],
      child: Builder(
        builder: (BuildContext context) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'DeliMeals',
            theme: ThemeData(
              primarySwatch: Colors.indigo,
              accentColor: Colors.amber,
              canvasColor: Color.fromARGB(255, 255, 255, 255),
              fontFamily: 'Raleway',
              textTheme: ThemeData.light().textTheme.copyWith(
                  bodyText1: TextStyle(
                    color: Color.fromRGBO(20, 51, 51, 1),
                  ),
                  // bodyText2: TextStyle(
                  //   color: Color.fromRGBO(20, 51, 51, 1),
                  // ),
                  subtitle1: TextStyle(
                    fontSize: 20,
                    fontFamily: 'RobotoCondensed',
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  )),
            ),
            // home: TabsScreen(cartMeals: _cartMeals,),
            initialRoute: '/',
            routes: {
              '/': (ctx) => TabsScreen(
                    _cartMeals,
                  ),
              CategoryMealsScreen.routeName: (ctx) =>
                  CategoryMealsScreen(_availableMeals),
              MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
              FiltersScreen.routeName: (ctx) => FiltersScreen(
                    _filters,
                    _setFilters,
                  ),
              InvoiceScreen.routeName: (ctx) => InvoiceScreen(),
            },
            onUnknownRoute: (settings) {
              return isLoading
                  ? Scaffold(
                      body: Center(
                        child: CircularProgressIndicator(),
                      ),
                    )
                  : _user == null
                      ? Navigator.of(context).pushNamed(LoginScreen.routeName)
                      : Navigator.of(context)
                          .pushNamed(CategoriesScreen.routeName);
            },
          );
        },
      ),
    );
  }
}
