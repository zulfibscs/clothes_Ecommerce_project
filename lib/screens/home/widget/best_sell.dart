import 'package:clothes_app_starter/screens/home/widget/categories_list.dart';
import 'package:flutter/material.dart';

class BestSell extends StatelessWidget {
  const BestSell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CategoriesList(title: 'Best Sell',),
          Card(margin: EdgeInsets.symmetric(horizontal: 25),
            color: Colors.white.withOpacity(0.9),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child:Stack(
              children: [

                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(

                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child:Image.asset('assets/images/best1.png',width: 80,) ,
                      ),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Maniso Women Oversized',style: TextStyle(fontWeight: FontWeight.bold,
                          height: 1.5),),
                          Text('T_Shirt',style: TextStyle(fontWeight: FontWeight.bold,
                              height: 1.5),),
                          Text('\$84.55',style: TextStyle(fontWeight: FontWeight.bold,
                              height: 1.5,color: Theme.of(context).primaryColor),),
                        ],
                      )
                    ],
                  ),
                ),
                Positioned(

                  top: 0,
                    right: 0,
                    child:
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.9),
                        shape: BoxShape.circle
                      ),
                        child: Icon(
                          Icons.favorite,color: Colors.red,size: 15,)))

              ],
            ),
          )
        ],
      ),
    );
  }
}
