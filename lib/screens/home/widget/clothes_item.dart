import 'package:clothes_app_starter/screens/details/detail.dart';
import 'package:flutter/material.dart';

import 'package:clothes_app_starter/models/clothes.dart';

class ClothesItem extends StatelessWidget {
  final Clothes clothes;
   ClothesItem(this.clothes);

  @override
  Widget build(BuildContext context) {
    return Container(
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>DetailPage(clothes))
              );
            },
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.all(9),
                        width:170 ,
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage(clothes.imageUrl),
                            fit: BoxFit.fitHeight
                          )
                        ),
                      ),
                      Positioned(
                        right: 20,
                          top: 15,
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.9),
                              shape: BoxShape.circle
                            ),
                        child: Icon(Icons.favorite,color: Colors.red,size: 20 ,),
                      ))
                    ],
                  ) ,
                  Text(clothes.title,style: TextStyle(fontWeight: FontWeight.bold,
                  height: 1.5),),
                  Text(clothes.subtitle,style: TextStyle(fontWeight: FontWeight.bold,
                      height: 1.5),),
                  Text(clothes.price,style: TextStyle(fontWeight: FontWeight.bold,
                      height: 1.5,color: Theme.of(context).primaryColor),),
                ],
              ),
            ),
          ),
    );
  }
}
