import 'package:basic_statefull/shopping/product_model.dart';
import 'package:basic_statefull/shopping/shopping_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Customshopscreen extends StatelessWidget 
{

   final ProductModel product;

  const Customshopscreen({super.key, required this.product});
  @override
  Widget build(BuildContext context) 
  {
    var x= context.read<ShoppingProvider>();
    return ListTile(
      leading: Icon(product.productIcon),
      title: Text(product.name),
      subtitle: Text("Price: /${product.price}"),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
        
         
            ElevatedButton(
            onPressed: () {
              x.removeFromCart(product);
            },
            child: const Icon(Icons.remove),
          ),
          Text("/${product.countity}"),
           ElevatedButton(
            onPressed: () {
              x.addToCart(product);
            },
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}