import 'package:flutter/material.dart';

class CategoriesList extends StatelessWidget {
  final String title;
  const CategoriesList({Key? key,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25,vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
          Row(children: [
            Text('View All',style: TextStyle(color: Theme.of(context).primaryColor,fontWeight: FontWeight.bold,
            fontSize: 18),),
            SizedBox(width: 10,),
            Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Icon(Icons.arrow_forward_ios,color: Colors.white,size: 15,),
            )
          ],)
        ],
      ),
    );
  }
}
