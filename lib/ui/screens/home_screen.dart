import 'package:flutter/material.dart';

import '../widgets/recent_orders.dart';
import '../widgets/cart_button.dart';
import '../widgets/search_bar.dart';
import '../widgets/nearby_restaurants.dart';
import 'cart_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.account_circle, size: 30),
        centerTitle: true,
        title: Text('Food Delivery'),
        actions: <Widget>[
          CartButton(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CartScreen(),
              ),
            ),
          ),
        ],
      ),
      body: ListView(children: <Widget>[
        SearchBar(),
        RecentOrders(),
        NearbyRestaurants(),
      ]),
    );
  }
}
