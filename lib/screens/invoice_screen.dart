import 'package:flutter/material.dart';
import '../providers/cart.dart';
import 'package:provider/provider.dart';
import '../widgets/invoice_item.dart';

class InvoiceScreen extends StatelessWidget {
  static const routeName = '/invoice';

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Invoice'),
      ),
      body:
       Column(
         children: [
           Expanded(
             child: ListView.builder(
                itemBuilder: (context, index) => InvoiceItem(
                  index: index,
                  id: cart.items.values.toList()[index].id,
                  price: cart.items.values.toList()[index].price,
                  quantity: cart.getQuantity(cart.items.values.toList()[index].id),
                  title: cart.items.values.toList()[index].title,
                ),
                itemCount: cart.itemCount,
              ),
           ),

          

         ],
       ),
      

    );
  }
}
