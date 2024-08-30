// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:projecr_food_app/components/my_current_location.dart';
import 'package:projecr_food_app/components/my_description_box.dart';

import 'package:projecr_food_app/components/my_drawer.dart';
import 'package:projecr_food_app/components/my_silver_app_bar.dart';
import 'package:projecr_food_app/components/my_tab_bar.dart';
import 'package:projecr_food_app/models/food.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

  //tab controller
  late TabController _tabController;

  @override
 void initState(){
  super.initState();
  _tabController = TabController(length: FoodCategory.values.length, vsync: this);
 }

 @override
 void dispose(){
  _tabController.dispose();
  super.dispose();

 } 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      drawer:  const MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context,innerBoxIsScrollled)=>[
       MySilverAppBar(
          title: MyTabBar(tabController: _tabController),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Divider(
                indent: 25,
                endIndent: 25,
                color: Theme.of(context).colorScheme.secondary,
              ),
             //my current location
              const MyCurrentLocation(),

              //description box
                const MyDescriptionBox(),
            ],
          ),
        ),
      ],
      body: TabBarView(
        controller: _tabController,
        children:[
          ListView.builder(
            itemCount: 5,
            itemBuilder: (context,index) => const Text("first tab items"),
            ),
            ListView.builder(
            itemCount: 5,
            itemBuilder: (context,index) => const Text("second tab items"),
            ),
            ListView.builder(
            itemCount: 5,
            itemBuilder: (context,index) => const Text("third tab items"),
            ),
            ListView.builder(
            itemCount: 5,
            itemBuilder: (context,index) => const Text("4th tab items"),
            ),
            ListView.builder(
            itemCount: 5,
            itemBuilder: (context,index) => const Text("5th tab items"),
            ),
        ],
        ),
      ),
    );
  }
}