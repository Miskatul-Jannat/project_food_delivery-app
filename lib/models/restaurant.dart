import 'food.dart';
class Restaurant {

  //list of food menu
  final List<Food> _menu = [
    //burgers
    Food(
      name: "Classic chesse  burger",
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

    //desserts

    //drinks
  ];

  /*
  G E T T E R S
  */
  List<Food> get menu => _menu;
   /*
  O P E R A T I O NS
  */

    //add to carts

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