import 'package:flutter/material.dart';
import 'package:projecr_food_app/components/my_button.dart';
import 'package:projecr_food_app/models/food.dart';
import 'package:projecr_food_app/models/restaurant.dart';
import 'package:provider/provider.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  final Map<Addon,bool> selectAddons = {};
   FoodPage({
    super.key,
     required this.food
     }){
        //initial selected addons to be fals
        for(Addon addon in food.availableAddons){
          selectAddons[addon] = false;
        }
     }

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {

//method to add to cart
void addTocart(Food food,Map<Addon,bool> selectAddons){

//close the current food page to go back to menu
Navigator.pop(context);

  //format the selected addons
  List<Addon>currentlySelectAddons = [];
  for(Addon addon in widget.food.availableAddons){
    if(widget.selectAddons[addon] == true){
      currentlySelectAddons.add(addon);
    }
  }

  //add to cart
  context.read<Restaurant>().addTocart(food,currentlySelectAddons);
}

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
      //scaffold ui
          Scaffold(
     
      body: SingleChildScrollView(
        child: Column(
          
        children: [
          //food image
          SizedBox(
            height: 230,
            width: double.infinity,
            child: Image.asset(widget.food.imagePath,
            fit: BoxFit.fill,
            ),
          ),
         Padding(
           padding: const EdgeInsets.all(25.0),
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            
             //food name
              Text(widget.food.name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              ),
        
              //food price
               Text('\$'+widget.food.price.toString(),
               style: TextStyle(
               
                fontSize: 16,
                color: Theme.of(context).colorScheme.primary,
              ),
              ),
        
            const SizedBox(height: 10.0,),
        
            //food description
              Text(widget.food.description),
        
              const SizedBox(height: 10.0,),
                Divider(color: Theme.of(context).colorScheme.secondary,),
        
              const SizedBox(height: 10.0,),
        
        
               //addons
              Text("Addons",
              style:TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              )
               ,),
        
         const SizedBox(height: 8.0,),
        
           
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Theme.of(context).colorScheme.secondary,
                   ),
                   borderRadius:BorderRadius.circular(8),
                ),
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  itemCount: widget.food.availableAddons.length,
                  itemBuilder:(context,index){
                         
                    //get individual addon
                    Addon addon = widget.food.availableAddons[index];
                         
                    //return checkbox ui
                      return CheckboxListTile(
                        title: Text(addon.name),
                        subtitle: Text('\$${addon.price}',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        ),
                        value: widget.selectAddons[addon],
                         onChanged: (bool? value){
                          setState(() {
                            widget.selectAddons[addon]=value!;
                          });
                         },
                         );
                  }, 
                  
                  ),
              ),
           ],),
         ),
          //button -> add to cart
          MyButton(text: "Add to cart",
           onTap: () => addTocart(widget.food,widget.selectAddons)
           ),
           const SizedBox(height: 20,),
        ],
            ),
      ),
    ),

        //back button
        SafeArea(
          child: Opacity(
            opacity: 0.6,
            child: Container(
              margin: const EdgeInsets.only(left: 25),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                onPressed: () => Navigator.pop(context),
                 icon: const Icon(Icons.arrow_back_ios_rounded),
                 ),
            ),
          ),
        ),
      ],
    );
  }
}