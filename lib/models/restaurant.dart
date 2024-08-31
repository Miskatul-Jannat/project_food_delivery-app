import 'package:flutter/material.dart';

import 'food.dart';
class Restaurant extends ChangeNotifier {

  //list of food menu
  final List<Food> _menu = [
    //burgers
    Food(
      name: "chesse  burger",
      description: "A juicy beef burger with melted cheddar,lettuse,tomato,and a hint of onion and pickle",
      imagePath: "lib/images/burgers/chesse.jpg",
      price: 0.9,
      category: FoodCategory.burgers,
      availableAddons:[
      Addon(name: "Extra chesse", price: 0.99),
      Addon(name: "Bacon", price: 1.99),
      Addon(name: "Avocado", price: 2.99),
       ]),
      Food(
      name: "Chiken burger",
      description: "A juicy beef burger with melted cheddar,lettuse,tomato,and a hint of onion and pickle",
      imagePath: "lib/images/burgers/chikenBurger.jpg",
      price: 0.9,
      category: FoodCategory.burgers,
      availableAddons:[
      Addon(name: "Extra chesse", price: 0.99),
      Addon(name: "Bacon", price: 1.99),
      Addon(name: "Avocado", price: 2.99),
       ]),
      Food(
      name: "Stand burger",
      description: "A juicy beef burger with melted cheddar,lettuse,tomato,and a hint of onion and pickle",
      imagePath: "lib/images/burgers/stand.jpg",
      price: 0.9,
      category: FoodCategory.burgers,
      availableAddons:[
      Addon(name: "Extra chesse", price: 0.99),
      Addon(name: "Bacon", price: 1.99),
      Addon(name: "Avocado", price: 2.99),
           ]),
       Food(
      name: "BB burger",
      description: "A juicy beef burger with melted cheddar,lettuse,tomato,and a hint of onion and pickle",
      imagePath: "lib/images/burgers/bb.jpg",
      price: 0.9,
      category: FoodCategory.burgers,
      availableAddons:[
      Addon(name: "Extra chesse", price: 0.99),
      Addon(name: "Bacon", price: 1.99),
      Addon(name: "Avocado", price: 2.99),
           ]), 
       Food(
      name: "Black burger",
      description: "A juicy beef burger with melted cheddar,lettuse,tomato,and a hint of onion and pickle",
      imagePath: "lib/images/burgers/black.jpg",
      price: 0.9,
      category: FoodCategory.burgers,
       availableAddons:[
      Addon(name: "Extra chesse", price: 0.99),
      Addon(name: "Bacon", price: 1.99),
      Addon(name: "Avocado", price: 2.99),
           ]),             
    //salads
     Food(
      name: "Caeser salad",
      description: "A juicy beef burger with melted cheddar,lettuse,tomato,and a hint of onion and pickle",
      imagePath: "lib/images/salads/greek.jpg",
      price: 0.9,
      category: FoodCategory.salads,
      availableAddons:[
      Addon(name: "Extra chesse", price: 0.99),
      Addon(name: "Bacon", price: 1.99),
      Addon(name: "Avocado", price: 2.99),
       ]),
        Food(
      name: "Cobb salad",
      description: "A juicy beef burger with melted cheddar,lettuse,tomato,and a hint of onion and pickle",
      imagePath: "lib/images/salads/greek.jpg",
      price: 0.9,
      category: FoodCategory.salads,
      availableAddons:[
      Addon(name: "Extra chesse", price: 0.99),
      Addon(name: "Bacon", price: 1.99),
      Addon(name: "Avocado", price: 2.99),
       ]),
        Food(
      name: "Greek salad",
      description: "A juicy beef burger with melted cheddar,lettuse,tomato,and a hint of onion and pickle",
      imagePath: "lib/images/salads/greek.jpg",
      price: 0.9,
      category: FoodCategory.salads,
      availableAddons:[
      Addon(name: "Extra chesse", price: 0.99),
      Addon(name: "Bacon", price: 1.99),
      Addon(name: "Avocado", price: 2.99),
       ]),
        Food(
      name: "Italian salad",
      description: "A juicy beef burger with melted cheddar,lettuse,tomato,and a hint of onion and pickle",
      imagePath: "lib/images/salads/italian.jpg",
      price: 0.9,
      category: FoodCategory.salads,
      availableAddons:[
      Addon(name: "Extra chesse", price: 0.99),
      Addon(name: "Bacon", price: 1.99),
      Addon(name: "Avocado", price: 2.99),
       ]),
        Food(
      name: "Nicase salad",
      description: "A juicy beef burger with melted cheddar,lettuse,tomato,and a hint of onion and pickle",
      imagePath: "lib/images/salads/nicase.jpg",
      price: 0.9,
      category: FoodCategory.salads,
      availableAddons:[
      Addon(name: "Extra chesse", price: 0.99),
      Addon(name: "Bacon", price: 1.99),
      Addon(name: "Avocado", price: 2.99),
       ]),
    //desserts
     Food(
      name: "Pie",
      description: "A juicy beef burger with melted cheddar,lettuse,tomato,and a hint of onion and pickle",
      imagePath: "lib/images/desserts/pie.jpg",
      price: 0.9,
      category: FoodCategory.desserts,
      availableAddons:[
      Addon(name: "Extra chesse", price: 0.99),
      Addon(name: "Bacon", price: 1.99),
      Addon(name: "Avocado", price: 2.99),
       ]),
        Food(
      name: "Caeser salad",
      description: "A juicy beef burger with melted cheddar,lettuse,tomato,and a hint of onion and pickle",
      imagePath: "lib/images/desserts/pie.jpg",
      price: 0.9,
      category: FoodCategory.desserts,
      availableAddons:[
      Addon(name: "Extra chesse", price: 0.99),
      Addon(name: "Bacon", price: 1.99),
      Addon(name: "Avocado", price: 2.99),
       ]),
        Food(
      name: "Caeser salad",
      description: "A juicy beef burger with melted cheddar,lettuse,tomato,and a hint of onion and pickle",
      imagePath: "lib/images/desserts/pie.jpg",
      price: 0.9,
      category: FoodCategory.desserts,
      availableAddons:[
      Addon(name: "Extra chesse", price: 0.99),
      Addon(name: "Bacon", price: 1.99),
      Addon(name: "Avocado", price: 2.99),
       ]),
        Food(
      name: "Caeser salad",
      description: "A juicy beef burger with melted cheddar,lettuse,tomato,and a hint of onion and pickle",
      imagePath: "lib/images/desserts/pie.jpg",
      price: 0.9,
      category: FoodCategory.desserts,
      availableAddons:[
      Addon(name: "Extra chesse", price: 0.99),
      Addon(name: "Bacon", price: 1.99),
      Addon(name: "Avocado", price: 2.99),
       ]),
        Food(
      name: "Caeser salad",
      description: "A juicy beef burger with melted cheddar,lettuse,tomato,and a hint of onion and pickle",
      imagePath: "lib/images/desserts/pie.jpg",
      price: 0.9,
      category: FoodCategory.desserts,
      availableAddons:[
      Addon(name: "Extra chesse", price: 0.99),
      Addon(name: "Bacon", price: 1.99),
      Addon(name: "Avocado", price: 2.99),
       ]),

    //drinks
     Food(
      name: "Hot chocolate",
      description: "A juicy beef burger with melted cheddar,lettuse,tomato,and a hint of onion and pickle",
      imagePath: "lib/images/drinks/hotchoclate.jpg",
      price: 0.9,
      category: FoodCategory.drink,
      availableAddons:[
      Addon(name: "Extra chesse", price: 0.99),
      Addon(name: "Bacon", price: 1.99),
      Addon(name: "Avocado", price: 2.99),
       ]),
        Food(
      name: "Juice",
      description: "A juicy beef burger with melted cheddar,lettuse,tomato,and a hint of onion and pickle",
      imagePath: "lib/images/drinks/Juice.jpg",
      price: 0.9,
      category: FoodCategory.drink,
      availableAddons:[
      Addon(name: "Extra chesse", price: 0.99),
      Addon(name: "Bacon", price: 1.99),
      Addon(name: "Avocado", price: 2.99),
       ]),
        Food(
      name: "Mocktaul",
      description: "A juicy beef burger with melted cheddar,lettuse,tomato,and a hint of onion and pickle",
      imagePath: "lib/images/drinks/mocktail.jpg",
      price: 0.9,
      category: FoodCategory.drink,
      availableAddons:[
      Addon(name: "Extra chesse", price: 0.99),
      Addon(name: "Bacon", price: 1.99),
      Addon(name: "Avocado", price: 2.99),
       ]),
        Food(
      name: "Soft drinks",
      description: "A juicy beef burger with melted cheddar,lettuse,tomato,and a hint of onion and pickle",
      imagePath: "lib/images/drinks/softdrink.jpg",
      price: 0.9,
      category: FoodCategory.drink,
      availableAddons:[
      Addon(name: "Extra chesse", price: 0.99),
      Addon(name: "Bacon", price: 1.99),
      Addon(name: "Avocado", price: 2.99),
       ]),
        Food(
      name: "Sperkling water",
      description: "A juicy beef burger with melted cheddar,lettuse,tomato,and a hint of onion and pickle",
      imagePath: "lib/images/drinks/water.jpg",
      price: 0.9,
      category: FoodCategory.drink,
      availableAddons:[
      Addon(name: "Extra chesse", price: 0.99),
      Addon(name: "Bacon", price: 1.99),
      Addon(name: "Avocado", price: 2.99),
       ]),

       //sides 
       Food(
      name: "Achar",
      description: "A juicy beef burger with melted cheddar,lettuse,tomato,and a hint of onion and pickle",
      imagePath: "lib/images/sides/bokchoi.jpg",
      price: 0.9,
      category: FoodCategory.sides,
      availableAddons:[
      Addon(name: "Extra chesse", price: 0.99),
      Addon(name: "Bacon", price: 1.99),
      Addon(name: "Avocado", price: 2.99),
       ]),
        Food(
      name: "Bok choi",
      description: "A juicy beef burger with melted cheddar,lettuse,tomato,and a hint of onion and pickle",
      imagePath: "lib/images/sides/bokchoi.jpg",
      price: 0.9,
      category: FoodCategory.sides,
      availableAddons:[
      Addon(name: "Extra chesse", price: 0.99),
      Addon(name: "Bacon", price: 1.99),
      Addon(name: "Avocado", price: 2.99),
       ]),
        Food(
      name: "Brown Rice",
      description: "A juicy beef burger with melted cheddar,lettuse,tomato,and a hint of onion and pickle",
      imagePath: "lib/images/sides/bokchoi.jpg",
      price: 0.9,
      category: FoodCategory.sides,
      availableAddons:[
      Addon(name: "Extra chesse", price: 0.99),
      Addon(name: "Bacon", price: 1.99),
      Addon(name: "Avocado", price: 2.99),
       ]),
        Food(
      name: "Kimchi",
      description: "A juicy beef burger with melted cheddar,lettuse,tomato,and a hint of onion and pickle",
      imagePath: "lib/images/desserts/pie.jpg",
      price: 0.9,
      category: FoodCategory.sides,
      availableAddons:[
      Addon(name: "Extra chesse", price: 0.99),
      Addon(name: "Bacon", price: 1.99),
      Addon(name: "Avocado", price: 2.99),
       ]),
        Food(
      name: "Roasted potato",
      description: "A juicy beef burger with melted cheddar,lettuse,tomato,and a hint of onion and pickle",
      imagePath: "lib/images/sides/bokchoi.jpg",
      price: 0.9,
      category: FoodCategory.sides,
      availableAddons:[
      Addon(name: "Extra chesse", price: 0.99),
      Addon(name: "Bacon", price: 1.99),
      Addon(name: "Avocado", price: 2.99),
       ]),

  ];

  /*
  G E T T E R S
  */
  List<Food> get menu => _menu;
   /*
  O P E R A T I O NS
  */

    //add to carts
    void addTocart(Food food, List<Addon>selectAddons){

    }

    //remove from cart

    //get total price of cart

    //get total numbers of item in cart

    //clear the cart


   /*
  H E L P E R S
  */

  //generate a receipt


  //formate double value into money


  
}