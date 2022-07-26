import 'package:flutter/material.dart';
import '../screens/invoice_screen.dart';
import '../widgets/cart_item.dart';
import 'package:provider/provider.dart';
import '../providers/cart.dart';

class CartScreen extends StatelessWidget {

  // final List<Meal> cartMeals;

  // const CartScreen({Key? key, required this.cartMeals}) : super(key: key);

  /* @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override*/
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    if (cart.itemCount == 0) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Image(
            image: AssetImage('images/empty_cart.png'),
          ),

          Text(
            'Explore Meals',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.indigo,
              fontSize: 25,
            ),
          ),
        ],
      );
    } else {
      return Scaffold(
        /* appBar: AppBar(
        title: const Text('Your Cart'),
      ),*/
        body: Column(
          children: [
            Card(
              margin: const EdgeInsets.all(15.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Total :',
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        const Icon(Icons.currency_rupee_rounded),
                        Chip(
                          label: Text(
                            '${cart.totalAmount}',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          ),
                          padding: const EdgeInsets.all(5.0),
                          backgroundColor: Theme.of(context).primaryColor,
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(InvoiceScreen.routeName);
                      },
                      child: const Text(
                        'ORDER NOW',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) => CartItem(
                  id: cart.items.values.toList()[index].id,
                  title: cart.items.values.toList()[index].title,
                  imageUrl: cart.items.values.toList()[index].imageUrl,
                  price: cart.items.values.toList()[index].price,
                ),
                itemCount: cart.itemCount,
              ),
            ),
          ],
        ),
      );
    }
  }
}
