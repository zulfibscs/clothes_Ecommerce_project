import 'package:clothes_app_starter/screens/home/widget/best_sell.dart';
import 'package:clothes_app_starter/screens/home/widget/custom_app_bar.dart';
import 'package:clothes_app_starter/screens/home/widget/new_arrival.dart';
import 'package:clothes_app_starter/screens/home/widget/search_input.dart';
import 'package:flutter/material.dart';

import '../../models/clothes.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
      )
    );
  }
}
