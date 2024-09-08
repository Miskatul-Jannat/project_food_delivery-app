import 'package:flutter/material.dart';
import 'package:projecr_food_app/components/my_button.dart';
import 'package:projecr_food_app/components/my_cart_tile.dart';
import 'package:projecr_food_app/models/cart_item.dart';
import 'package:projecr_food_app/pages/payment_page.dart';
import 'package:provider/provider.dart';
import 'package:projecr_food_app/models/restaurant.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(builder: (context,restaurant,child){

      //cart
      final userCart = restaurant.cart;
      //scaffold ui

      return Scaffold(
        // ignore: deprecated_member_use
        backgroundColor:Theme.of(context).colorScheme.background ,
        appBar: AppBar(
          title: const Text("Cart"),
          backgroundColor: Colors.transparent,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          actions: [
            //clear cart button
            IconButton(
              onPressed: (){
               showDialog(
                context: context,
                 builder:(context)=>AlertDialog(
                  title: const Text("Are you sure you want to clear the cart?"),
                  actions: [
                    //cancell button
                  TextButton(onPressed: () => Navigator.pop(context) ,
                   child: const Text("Cancell"),
                   ),

                    //yes
                       //cancell button
                  TextButton(onPressed: (){
                     Navigator.pop(context);
                     restaurant.clearcart();
                  } ,
                   child: const Text("Yes"),
                   ),
                  ],
                 ),
                 );
              },
               icon: const Icon(Icons.delete),
               )
          ],
        ),
        body: Column(
          
          children: [
            //list of cart
            Expanded(
              child: Column(
                children: [
                 userCart.isEmpty?
                  const Expanded(
                    child: Center(
                  child: Text("The cart is empty"),
                  ),
                  )
                  : Expanded(
                    child: ListView.builder(
                    itemCount: userCart.length,
                    itemBuilder: (context,index) {
              
                        //get individual cart item
                        final cartItem = userCart[index];
              
                        //return cart tile ui
                        return MyCartTile(cartItem: cartItem);
                    },
                    ),
                    )
                ],
              ),
            ),
           //button to pay
          MyButton(
            text: "Go to checkout.",
             onTap: () => Navigator.push(
              context,
             MaterialPageRoute(
              builder:(context)=> const PaymentPage(),
              ),
              ),
            ),

            const SizedBox(height: 25,), 
          ],
        ),
      );
    });
  }
}