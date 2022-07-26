import 'package:flutter/material.dart';
import '../dummy_data.dart';
import '../widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  
  static const routeName = '/category-screen';
  @override
  Widget build(BuildContext context) {
    return (
      GridView(
         padding: const EdgeInsets.all(25),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200.0,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20.0,
            mainAxisSpacing: 20.0,
          ),
         
          children: DUMMY_CATEGORIES
              .map((category) => CategoryItem(
                    category.id,
                    category.title,
                    category.color,
                  ))
              .toList(),
      )
    );
  }
}
