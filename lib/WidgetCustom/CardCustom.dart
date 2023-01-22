import 'package:flutter/material.dart';

Widget CardCustom() {
  return Card(
    color: Colors.black,
    child: Stack(
      children: [
        Opacity(opacity: 0.6,
            child: Image.network("https://picsum.photos/200/300",height: 200,width: 150,fit:BoxFit.cover)),
        Positioned(
            left:2,
            bottom: 2,
            child: Row(
              children: [
                Text("Product Name",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold)),
                SizedBox(width: 10,),
                Text("\$500 Tk",style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.bold)),

              ],
            )),

      ],
    ),
  );
}