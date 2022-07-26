import 'package:flutter/material.dart';
import '../providers/meals.dart';
import 'package:provider/provider.dart';
import '../widgets/meal_item.dart';

class MealsList extends StatelessWidget {
  final String categoryId;
  MealsList({@required this.categoryId});
  

  @override
  Widget build(BuildContext context) {
    final mealsData = Provider.of<Meals>(context, listen: false);
    final meals = mealsData.meals
        .where((element) => element.categories.contains(categoryId))
        .toList();
    return ListView.builder(
      itemBuilder: (context, index) {
        return ChangeNotifierProvider.value(
          value: meals[index],
          child: MealItem(
              /* id: meals[index].id,
            title: meals[index].title,
            imageUrl: meals[index].imageUrl,
            price: meals[index].price,*/
              ),
        );
      },
      itemCount: meals.length,
    );
  }
}
