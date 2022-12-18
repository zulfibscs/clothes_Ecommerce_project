import 'package:flutter/material.dart';


class SearchInput extends StatelessWidget {
  final tagList=['Women','T_shirt','dress'];
   SearchInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25,right: 25,left: 25),
      child: Column(
        children: [
          Row(
            children: [
              Flexible(
                flex: 1,
                child: TextField(
                  cursorColor: Colors.blue,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none
                    ),
                    hintText: 'Search Aesthetic Shirts',
                    hintStyle: TextStyle(color: Colors.grey,fontSize: 18),
                    prefixIcon: Container(
                      padding: EdgeInsets.all(15),
                      child: Image.asset('assets/icons/search.png',width: 20, ),
                    )
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(15)
                ),
                child:Image.asset('assets/icons/filter.png',width: 25,),
              )
            ],
          ),
          Row(
            children:tagList.map((e) => Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(top: 10,right: 10),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Text(e),
            )).toList(),
          )
        ],
      ),
    );
  }
}
