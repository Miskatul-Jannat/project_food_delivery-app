import 'package:projecr_food_app/models/food.dart';

class CartItem{
  Food food;
  List<Addon> selectAddons;
  int quantity;
  CartItem({
    required this.food,
    required this.selectAddons,
     this.quantity = 1,
  });

  double get totatPrice{
    double addonsPrice = selectAddons.fold(0, (sum, addon) => sum+addon.price);
    return (food.price + addonsPrice)*quantity;
  }
}