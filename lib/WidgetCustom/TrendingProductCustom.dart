import 'package:flutter/material.dart';
import 'package:ui_ux_design/WidgetCustom/CardCustom.dart';


Widget TrendingProductCustom() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text("Trending",style: TextStyle(color: Colors.black.withOpacity(0.9),letterSpacing: 2,fontSize: 20),),
      GridView.builder(
        primary:false,
        shrinkWrap: true,
        itemCount: 10,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 2.0,
            mainAxisSpacing: 2.0,
            childAspectRatio: 1.0
        ),
        itemBuilder: (context,index){
          return CardCustom();
        },),
    ],
  );
}