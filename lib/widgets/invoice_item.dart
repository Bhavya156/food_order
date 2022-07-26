import 'package:flutter/material.dart';

class InvoiceItem extends StatelessWidget {
  final int index;
  final String id;
  final double price;
  final int quantity;
  final String title;

  InvoiceItem({
    @required this.index,
    @required this.id,
    @required this.price,
    @required this.quantity,
    @required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(
        horizontal: 15.0,
        vertical: 4.0,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: Text(
            '${index + 1}',
            style: const TextStyle(
              color: Colors.deepOrange,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.only(bottom: 8.5),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 19.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          subtitle: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.currency_rupee,
                size: 20.0,
              ),
              Text(
                '${price}  x$quantity',
                style: const TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.currency_rupee,
                size: 25.0,
              ),
              Text(
                '${price * quantity}',
                style: const TextStyle(
                  color: Colors.indigoAccent,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
