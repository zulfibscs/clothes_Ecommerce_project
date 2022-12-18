import 'package:clothes_app_starter/models/clothes.dart';
import 'package:clothes_app_starter/screens/home/widget/categories_list.dart';
import 'package:clothes_app_starter/screens/home/widget/clothes_item.dart';
import 'package:flutter/material.dart';

class NewArrival extends StatelessWidget {
  final ClothesList=Clothes.generateClothes();
    NewArrival({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CategoriesList(title: 'New Arrival'),
          Container(
            height: 280,
            child: ListView.separated(scrollDirection: Axis.horizontal,itemBuilder: (context, index) => ClothesItem(ClothesList[index]),
                separatorBuilder: (context, index) =>SizedBox(width: 10,) ,
                itemCount: ClothesList.length),
          ),

        ],
      ),
    );
  }
}
