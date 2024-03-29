import 'package:clothes_app_starter/screens/home/widget/best_sell.dart';
import 'package:clothes_app_starter/screens/home/widget/custom_app_bar.dart';
import 'package:clothes_app_starter/screens/home/widget/new_arrival.dart';
import 'package:clothes_app_starter/screens/home/widget/search_input.dart';
import 'package:flutter/material.dart';

import '../../models/clothes.dart';

class HomePage extends StatelessWidget {
  final bottumList=['home','menu','heart','user'    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(),
            SearchInput(),
            NewArrival(),
            BestSell(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,

        type: BottomNavigationBarType.fixed,
        items: bottumList.map((e) =>BottomNavigationBarItem(

           label: e,
            icon:Image.asset('assets/icons/$e.png',width: 20,)
        )
        ).toList(),
      ),
    );
  }
}
