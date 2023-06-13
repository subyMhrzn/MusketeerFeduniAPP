import 'package:flutter/material.dart';

class ItemDetailsPage extends StatelessWidget {
  final List<ItemDetails> itemDetailsList;

  const ItemDetailsPage({super.key, required this.itemDetailsList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Item Details'),
      ),
      body: ListView.builder(
        itemCount: itemDetailsList.length,
        itemBuilder: (context, index) {
          final itemDetails = itemDetailsList[index];
          return ListTile(
            title: Text(itemDetails.name),
            subtitle: Text('Price: ${itemDetails.price}'),
            leading: Image.network(itemDetails.imageUrl),
          );
        },
      ),
    );
  }
}

class ItemDetails {
  final String name;
  final double price;
  final String imageUrl;

  ItemDetails(
      {required this.name, required this.price, required this.imageUrl});
}
