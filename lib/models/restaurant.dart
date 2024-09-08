import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:projecr_food_app/models/cart_item.dart';

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
  List<CartItem> get cart => _cart;
   /*
  O P E R A T I O NS
  */

    //user cart
    final List<CartItem>_cart=[];

    //add to carts
    void addTocart(Food food, List<Addon>selectAddons){
      //see if there is a cart item already with the same food and selected items
      CartItem? cartItem = _cart.firstWhereOrNull((item){
       
        //check if the food items are same
        bool isSameFood = item.food == food;


        //check if the food items are the same
        bool isSameAddons =ListEquality().equals(item.selectAddons, selectAddons);
        return isSameFood && isSameAddons;

    });

    //if item already exists,increase its quantity
    if(cartItem != null){
      cartItem.quantity++;
    }

    //otherwise add anew cart item to the cart
    else{
      _cart.add(CartItem(
        food: food, 
        selectAddons: selectAddons
        ));
    }
    notifyListeners();
     }

    //remove from cart
    void removeFromCart(CartItem cartItem){
      int cartIndex = _cart.indexOf(cartItem);

      if(cartIndex != -1){
        if(_cart[cartIndex].quantity>1){
          _cart[cartIndex].quantity--;
        }
        else{
          _cart.removeAt(cartIndex);
        }
      }
      notifyListeners();
    }

    //get total price of cart
    double getTotalPrice(){
      double total=0.0;

      for(CartItem cartItem in _cart){
        double itemTotal = cartItem.food.price;

        for(Addon addon in cartItem.selectAddons)
        {
          itemTotal=addon.price;
        }
        total += itemTotal +  cartItem.quantity;
      }
      return total;
    }

    //get total numbers of item in cart
    int getTotalItemCount(){
      int totalItemCount = 0;

      for(CartItem cartItem in _cart)
      {
        totalItemCount += cartItem.quantity;
      }
      return totalItemCount;
    }

    //clear the cart

    void clearcart(){
      _cart.clear();
      notifyListeners();
    }


   /*
  H E L P E R S
  */

  //generate a receipt
    String displayCartReceipt(){
      final recipt = StringBuffer();
      recipt.writeln("Here's your recipt.");
      recipt.writeln();

      //format the date to include up to secondsonly
      String formattedDate =
       DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());
        recipt.writeln(formattedDate);
         recipt.writeln();
          recipt.writeln("-----------");
        for(final CartItem in _cart){
          recipt.writeln("${CartItem.quantity} x ${CartItem.food.name} -m${_formatPrice(CartItem.food.price)}");
          if(CartItem.selectAddons.isNotEmpty){
            recipt.writeln("   Add-ons: ${_formatAddons(CartItem.selectAddons)}");
          }
          recipt.writeln();
        }  
        recipt.writeln("----------");
        recipt.writeln();
        recipt.writeln("Total Items: ${getTotalItemCount()}");
        recipt.writeln("Total price: ${_formatPrice(getTotalPrice())}");

        return recipt.toString();
    }

  //formate double value into money
     String _formatPrice(double price){
    return "\$${price.toStringAsFixed(2)}";
  }

  //format list of addons into a string summary
  String _formatAddons(List<Addon>addons){
    return addons.map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
    .join(", ");
  }

  
}