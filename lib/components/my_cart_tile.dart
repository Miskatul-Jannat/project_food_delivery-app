import 'package:flutter/material.dart';
import 'package:projecr_food_app/components/my_quantity_selector.dart';
import 'package:projecr_food_app/models/cart_item.dart';
import 'package:projecr_food_app/models/restaurant.dart';
import 'package:provider/provider.dart';

class MyCartTile extends StatelessWidget {
  final CartItem cartItem;

  const MyCartTile({
    super.key,
     required this.cartItem
     });

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context,restaurant,child) =>Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(8),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  //food image 
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(cartItem.food.imagePath,
                      height: 100,
                      width: 100,
                      ),
                    ),
              
              const SizedBox(width: 10,),
              
                  //name and price
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //food name
                      Text(cartItem.food.name),
              
                      //food price
                       Text('\$'+cartItem.food.price.toString()
                       ),
                    ],
                  ),

                  const Spacer(),
              
                  //increment or drcrement quantity
                  QuantitySelector(
                    quantity: cartItem.quantity,
                     food:cartItem.food,
                      onIncrement: (){
                        restaurant.addTocart(
                      cartItem.food,
                      cartItem.selectAddons);
                      },
                       onDecrement: (){
                        restaurant.removeFromCart(cartItem);
                       },
                       )
                ],
              ),
            ),

            //addons
            SizedBox(
              height: cartItem.selectAddons.isEmpty ? 0:60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 10,bottom: 10,right: 10),
              children: cartItem.selectAddons.map((addon)=> 
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: FilterChip(
                  label: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //addon name
                      Text(addon.name),
                
                      //addon price
                      Text('\$'+ cartItem.food.price.toString(),
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary
                      ),
                      ),
                      
                    ],
                  ),
                  shape: StadiumBorder(
                    side: BorderSide(
                      color: Theme.of(context).colorScheme.primary,
                    )
                  ),
                   onSelected:(value){},
                   backgroundColor: Theme.of(context).colorScheme.secondary,
                   labelStyle: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontSize: 12,
                   ),
                    ),
              ),)
                 .toList(),
              ),
            ),
          ],
        ),
      ));
  }
}