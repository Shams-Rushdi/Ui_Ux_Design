import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_ux_design/Views/const.dart';
import '../../SearchDelegate/searchPage.dart';
import '../../WidgetCustom/CardCustom.dart';
import '../../WidgetCustom/SearchTextField.dart';
import '../../WidgetCustom/SliderCustom.dart';
import '../../WidgetCustom/TrendingProductCustom.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Constance constance=Constance();


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(  
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchTextField(size, context),
            buildSlider(),
            TrendingProductCustom()

          ],
        ),
      )
    );
  }




}