import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/meals.dart';
import '../providers/cart.dart';

class MealDetailScreen extends StatelessWidget {
  static const routeName = '/meal-detail';

 /* final Function(String) addToCart;
  final Function(String) isInCart;*/

  /*const MealDetailScreen(
      {Key? key, required this.addToCart, required this.isInCart})
      : super(key: key);*/

//
//   @override
//   State<MealDetailScreen> createState() => _MealDetailScreenState();
// }
//
// class _MealDetailScreenState extends State<MealDetailScreen> {

  Widget buildSelectionTitle(BuildContext context, String title) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10.0,
      ),
      child: Text(
        title,
        style: Theme.of(context).textTheme.subtitle1,
      ),
    );
  }

  Widget buildDescription(BuildContext context, List list) {
    return Container(
      /* decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey,),
        borderRadius: BorderRadius.circular(10.0),
      ),*/
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      height: 220,
      width: 370,
      child: ListView.builder(
        itemBuilder: (context, index) => Card(
          color: Theme.of(context).colorScheme.secondary,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 5.0,
              horizontal: 10,
            ),
            child: Text(
              list[index],
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        itemCount: list.length,
      ),
    );
  }

  /*Widget bottomAddCartOption(Meal meal) {
    return BottomAppBar(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        height: 70.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Text(
                  'Total: ',
                  style: TextStyle(
                    fontSize: 19.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 15.0,
                ),
                const Icon(Icons.currency_rupee_rounded),
                SizedBox(
                  width: 6.0,
                ),
                Text(
                  meal.price.toString(),
                  style: const TextStyle(
                    fontSize: 19.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
            ElevatedButton.icon(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
                padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(
                    vertical: 13.0,
                    horizontal: 15.0,
                  ),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              icon: const Icon(CupertinoIcons.cart),
              label: const Text(
                'Add To Cart',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }*/
  @override
  Widget build(BuildContext context) {
    // final cart = Provider.of<CartProvider>(context);
    final cart = Provider.of<Cart>(context);
    final mealId = ModalRoute.of(context)?.settings.arguments as String;
    final selectedMeal = Provider.of<Meals>(context).findById(mealId);

    final mealDescription = [];
    final sentences = selectedMeal.description.split('.');
    for (var element in sentences) {
      mealDescription.add('* $element.');
    }
    mealDescription.removeLast();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          selectedMeal.title,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image.network(
                selectedMeal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            buildSelectionTitle(context, 'Description'),
            buildDescription(context, mealDescription),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              height: 70.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Text(
                        'Price: ',
                        style: TextStyle(
                          fontSize: 19.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                      const Icon(Icons.currency_rupee_rounded),
                      const SizedBox(
                        width: 6.0,
                      ),
                      Text(
                        '${selectedMeal.price}',
                        style: const TextStyle(
                          fontSize: 21.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      if(cart.getQuantity(selectedMeal.id) == -1){
                        cart.addItem(selectedMeal.id, selectedMeal.price,
                            selectedMeal.title, selectedMeal.imageUrl);
                      }else{
                        cart.removeItem(selectedMeal.id);
                      }
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red),
                      padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(
                          vertical: 13.0,
                          horizontal: 15.0,
                        ),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                    icon: Icon(cart.isInCart(selectedMeal.id)
                        ? Icons.shopping_cart
                        : CupertinoIcons.cart),
                    label: const Text(
                      'Add To Cart',
                      style: TextStyle(
                        fontSize: 19.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //bottomNavigationBar: bottomAddCartOption(selectedMeal),
    );
  }
}
