// import 'package:flutter/material.dart';
// import '../providers/meal.dart';
// import 'package:provider/provider.dart';
// import '../screens/meal_detail_screen.dart';

// class MealItem extends StatelessWidget {
  

//   /* final String id;
//   final String title;
//   final String imageUrl;
//   final double price;

//   const MealItem({
//     Key? key,
//     required this.id,
//     required this.title,
//     required this.imageUrl,
//     required this.price,
//   }) : super(key: key);*/

// /*  @override
//   State<MealItem> createState() => _MealItemState();
// }

// class _MealItemState extends State<MealItem> {*/
//   void selectMeal(BuildContext context, String id) {
//     Navigator.of(context).pushNamed(
//       MealDetailScreen.routeName,
//       arguments: id,
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     final meal = Provider.of<Meal>(context, listen: false);

//     return InkWell(
//       onTap: () => selectMeal(context, meal.id),
//       child: Card(
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(15.0),
//         ),
//         elevation: 4.0,
//         margin: const EdgeInsets.all(10.0),
//         child: Column(
//           children: [
//             Stack(
//               children: [
//                 ClipRRect(
//                   borderRadius: const BorderRadius.only(
//                     topLeft: Radius.circular(15.0),
//                     topRight: Radius.circular(15.0),
//                   ),
//                   child: Image.network(
//                     meal.imageUrl,
//                     height: 250,
//                     width: double.infinity,
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 Positioned(
//                   bottom: 20.0,
//                   right: 10.0,
//                   child: Container(
//                     width: 300,
//                     color: Colors.black54,
//                     padding: const EdgeInsets.symmetric(
//                       vertical: 5.0,
//                       horizontal: 20.0,
//                     ),
//                     child: Text(
//                       meal.title,
//                       style: const TextStyle(
//                         fontSize: 26,
//                         color: Colors.white,
//                       ),
//                       softWrap: true,
//                       overflow: TextOverflow.fade,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             Padding(
//               padding: const EdgeInsets.all(20),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   Row(
//                     children: [
//                       const Icon(Icons.currency_rupee_rounded),
//                       const SizedBox(
//                         width: 6.0,
//                       ),
//                       Text(
//                         '${meal.price * 10}',
//                         style: const TextStyle(
//                           fontSize: 20.0,
//                         ),
//                       ),
//                       const SizedBox(
//                         width: 10.0,
//                       ),
//                       const Text(
//                         '*GST included',
//                         style: TextStyle(
//                           fontSize: 16.5,
//                         ),
//                       ),
//                     ],
//                   ),
//                   /* Row(
//                     children: [
//                       InkWell(
//                         onTap: () {},
//                         child: Container(
//                           width: 40.0,
//                           height: 40.0,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(10.0),
//                             color: Colors.blue,
//                             border: Border.all(
//                               color: Colors.blue,
//                             ),
//                           ),
//                           child: const Padding(
//                             padding: EdgeInsets.all(5.0),
//                             child: Icon(
//                               Icons.shopping_cart_outlined,
//                               color: Colors.white,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),*/
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../screens/meal_detail_screen.dart';
import '../providers/meal.dart';

class MealItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final double price;

  MealItem({
    @required this.id,
    @required this.title,
    @required this.imageUrl,
    @required this.price,
  });

  void selectMeal(BuildContext context) {
    Navigator.of(context)
        .pushNamed(
      MealDetailScreen.routeName,
      arguments: id,
    )
        .then((result) {
      if (result != null) {
        // removeItem(result);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectMeal(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 10,
                  child: Container(
                    width: 300,
                    color: Colors.black54,
                    padding: EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 20,
                    ),
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    children: [
                      const Icon(Icons.currency_rupee_rounded),
                      const SizedBox(
                        width: 6.0,
                      ),
                      Text('$price',
                        style: const TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      const Text(
                        '*GST included',
                        style: TextStyle(
                          fontSize: 16.5,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

