import 'package:flutter/material.dart';

import 'package:clothes_app_starter/models/clothes.dart';

class ClothesItem extends StatelessWidget {
  final Clothes clothes;
   ClothesItem(this.clothes);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                          image: AssetImage('assets/images/arrival1.png'),
                          fit: BoxFit.fitHeight
                        )
                      ),
                    ),
                    Positioned(
                      right: 20,
                        top: 15,
                        child: Container(
                      child: Icon(Icons.favorite,color: Colors.red,),
                    ))
                  ],
                )
              ],
            ),
          ),
    );
  }
}
