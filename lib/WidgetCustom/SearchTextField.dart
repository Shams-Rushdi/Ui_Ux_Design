import 'package:flutter/material.dart';

import '../SearchDelegate/searchPage.dart';
import '../Views/const.dart';

Widget SearchTextField(Size size, BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      // PageView(
      //   onPageChanged: (index){
      //     setState(() {
      //     });
      //   },
      // ),
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Container(
            width:size.width*0.5,
            height: 60,
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.deepOrange.withOpacity(0.5),
              borderRadius: BorderRadius.circular(5),
            ),
            child: TextField(
              onTap: (){
                showSearch(context: context, delegate: MySearchDelegate());
              },
              decoration: InputDecoration(
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal:15),

              ),
            )),
      ),
      Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  color: Constance().color1.withOpacity(0.5),
                  shape: BoxShape.circle
              ),
              child: IconButton(onPressed: (){}, icon: Icon(Icons.notifications_active_outlined,size: 25,))),

          Positioned(
            right: 0,
            top: -3,
            child: Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle
              ),

              child: Center(
                child: Text("2",style:TextStyle(fontSize: 10),),
              ),
            ),
          )
        ],
      )
    ],
  );
}