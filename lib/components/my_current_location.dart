import 'package:flutter/material.dart';
import 'package:projecr_food_app/models/restaurant.dart';
import 'package:provider/provider.dart';

class MyCurrentLocation extends StatelessWidget {
  final TextEditingController textController = TextEditingController(); 
   MyCurrentLocation({super.key, });
  
 

  void openLocationSearchBox(BuildContext context){
    
    showDialog(context: context, builder: (context)=>AlertDialog(
      title: const Text("Your location"),
      content: const TextField(
        decoration: InputDecoration(
          hintText: "Enter adress"
        ),
      ),
      actions: [
        //cancell button
        MaterialButton(
          onPressed: () =>Navigator.pop(context),
          child: const Text("Cancel"),
          ),

          //save button
        MaterialButton(
          onPressed: () {
              //update delivery adrees
        String newAddress =textController.text;
        context.read<Restaurant>().updateDeliveryAddress(newAddress);
           Navigator.pop(context);
           textController.clear();
          },
         
          child: const Text("save"),
          ),
      ],

     

    ),
    );
  }

  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Deliver now",
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
          GestureDetector(
            onTap: () =>openLocationSearchBox(context),
            child: Row(
              children: [
                //adress
                 Consumer<Restaurant>(
                  builder: (context,restaurant,child) =>Text(
                    restaurant.deliveryAddress,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ),
                 
                //drop down menu
                const Icon(Icons.keyboard_arrow_down_rounded),
              ],
            ),
          ),
        ],
      ),
    );
  }
}