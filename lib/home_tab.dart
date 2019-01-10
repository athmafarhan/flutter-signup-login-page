import 'package:flutter/material.dart';

import 'model/products_repository.dart';
import 'model/product.dart';

class HomeAppBar extends StatelessWidget {

  var appBar0 = AppBar(
    actions: <Widget>[
      IconButton(
          icon: Icon(
            Icons.search,
            color: Colors.white,
          ),
          onPressed: null),
      IconButton(
          icon: Icon(
            Icons.favorite,
            color: Colors.white,
          ),
          onPressed: null),
      IconButton(
          icon: Icon(
            Icons.notifications,
            color: Colors.white,
          ),
          onPressed: null),
    ],
    backgroundColor: Color(0XFF00C6C0),
    title: Text(
      "SeBar",
      style: TextStyle(fontWeight: FontWeight.w500),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
    );
  }
}


class HomeTab extends StatelessWidget {

  List<Card> _buildGridCards(BuildContext context) {
    List<Product> products = ProductsRepository.loadProducts(Category.all);

    if (products == null || products.isEmpty) {
      return const <Card>[];
    }

    final ThemeData theme = Theme.of(context);

    return products.map((product) {
      return Card(
        // TODO: Adjust card heights (103)
        elevation: 4.0,
        child: Column(
          // TODO: Center items on the card (103)
          crossAxisAlignment: CrossAxisAlignment.start,

          children: <Widget>[
            AspectRatio(
              aspectRatio: 20 / 14,
              child: Image.asset(
                'assets/shrine_images/'+product.assetName, fit: BoxFit.fitWidth,
                // TODO: Adjust the box size (102)
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
                child: Column(
                  // TODO: Align labels to the bottom and center (103)
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // TODO: Change innermost Column (103)
                  children: <Widget>[
                    // TODO: Handle overflowing labels (103)
                    SizedBox(height: 10.0,),
                    Text(
                      product.name,
                      style: theme.textTheme.title,
                      maxLines: 1,
                    ),
                    SizedBox(height: 12.0),
                    Text(
                      'Rp. '+product.price.toString()+'.000/hari/barang',
                        style: TextStyle(color: Color(0XFFFF6F00), fontSize: 12.0),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Text('Rekomendasi'),
          ),
          Expanded(
            child: GridView.count(
                crossAxisCount: 2,
                padding: EdgeInsets.all(9.0),
                childAspectRatio: 8.0 / 10.5,
                children: _buildGridCards(context) // Replace
            ),
          ),
        ],
      ),
    );
  }
}
