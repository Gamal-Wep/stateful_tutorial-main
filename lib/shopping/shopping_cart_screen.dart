import 'package:basic_statefull/shopping/customShopScreen.dart';
import 'package:basic_statefull/shopping/shopping_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShoppingCartScreen extends StatelessWidget {
   ShoppingCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping Cart"),
      ),
      body: Consumer<ShoppingProvider>(
        builder: (context, value, child) {
          return Column(
            children: [
              ListView.builder(
                itemCount: value.cart.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final product = value.cart[index];
                  return Customshopscreen(product: product);
                },
              ),
            ],
          );
        },
      ),
    );
  }
} 