import 'package:flutter/material.dart';
import 'package:ui_ux_design/Views/const.dart';

class MySearchDelegate extends SearchDelegate{
  List<String> list = ["Product 1","aProduct 2","Product 3","Product 4"];

  @override
  ThemeData appBarTheme(BuildContext context) {
    // TODO: implement appBarTheme
    return ThemeData();
  }

  @override
  List<Widget>? buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: (){
            query = '';
          },)
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(
        onPressed: (){
          close(context,null);
        },
        icon: Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    var data = query.isEmpty?list: list.where((element)=>element.startsWith(query)).toList();
    return
      data.isNotEmpty?
    ListView.builder(
        itemCount: data.length,
        itemBuilder: (context,index){
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(

          tileColor: Constance().color1,
          title: Text(data[index],style: TextStyle(color: Colors.white),)
        ),
      );
    }):Center(child: Text("There is no data"),);

  }

}