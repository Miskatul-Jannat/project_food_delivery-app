import 'package:flutter/material.dart';
import 'package:projecr_food_app/models/food.dart';

class MyTabBar extends StatelessWidget {
  final TabController tabController;
  const MyTabBar({super.key, 
  required this.tabController,
  });

  List<Tab> _buildCategoryTab(){
    return FoodCategory.values.map((category){
      return Tab(
        text:category.toString().split('.').last,
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(
        controller: tabController,
        tabs: const [
          //1st tab
            Tab(
              icon: Icon(Icons.home),
            ),
          //2nd tab
            Tab(
              icon: Icon(Icons.settings),
            ),
             //3rd tab
            Tab(
              icon: Icon(Icons.person),
            ),
        ],
        ),
    );
  }
}