import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: MediaQuery.of( context).padding.top,left:25,right: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              RichText(text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Howdy What Are you  \n Looking For',style: TextStyle(color: Colors.black,
                    fontWeight: FontWeight.bold,fontSize: 22)
                    ),
                    TextSpan(text: '👀',style: TextStyle(fontSize: 22)),
                  ]
              ))
            ],
          ),
         Stack(children: [
           Container(
             padding:EdgeInsets.all(10),

             decoration: BoxDecoration(
               color: Colors.white,
               borderRadius: BorderRadius.circular(5),
               boxShadow: [
                 BoxShadow(
                   color: Colors.grey.withOpacity(.3),
                   spreadRadius: 0.1,
                   blurRadius: 0.1,
                   offset: Offset(0,1),
                 )
               ]
             ),

             child: Icon(Icons.shopping_cart_checkout_outlined,
             color: Colors.grey,),
           ),
           Positioned(
             right: 5,
               top: 10,
               child: Container(
             width: 10,
             height: 10,
             decoration: BoxDecoration(
               color: Theme.of(context).primaryColor,
               shape: BoxShape.circle
             ),
           ))
         ],)

        ],
      ),
    );
  }
}
