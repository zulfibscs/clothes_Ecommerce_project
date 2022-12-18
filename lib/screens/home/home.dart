import 'package:clothes_app_starter/screens/home/widget/categories_list.dart';
import 'package:clothes_app_starter/screens/home/widget/clothes_item.dart';
import 'package:clothes_app_starter/screens/home/widget/custom_app_bar.dart';
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
            CategoriesList(title: 'New Arrival'),
            ClothesItem(Clothes(
                'Gucci Oversized',
                'Hoodie',
                '\$98.44',
                'assets/images/arrival1.png',
                ['assets/images/arrival1.png',
                  'assets/images/detail2.png'])),

          ],
        ),
      )
    );
  }
}
