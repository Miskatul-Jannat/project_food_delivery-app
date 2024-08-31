import 'package:flutter/material.dart';
import 'package:projecr_food_app/models/food.dart';

class FoodTile extends StatelessWidget {
  final Food food;
  final void Function()? onTap;

  const FoodTile({
    super.key,
     required this.food,
     required this.onTap,
      });
     
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
       onTap: onTap,
       child: Padding(
         padding: const EdgeInsets.all(15.0),
         child: Row(
          children: [
            //food details
            Expanded(
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  //text food details
                  Text(food.name),
                  Text(
                    '\$'+food.price.toString(),
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    ),
                    const SizedBox(height: 10,),
                  Text(
                    food.description,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary
                    ),
                    ),
                ],
              ), 
            ),

            const SizedBox(width: 15,),
         
            //food image
            SizedBox(
              height: 150,
              width: 150,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                
                child: Image.asset(food.imagePath,
                fit: BoxFit.cover,
                
                )),
            ),
          ],
         ),
       ),
        ),

        //divider line
        Divider(
          color: Theme.of(context).colorScheme.secondary,
          endIndent: 25,
          indent: 25,
        ),
      ],
    );
  }
}