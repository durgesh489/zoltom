import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:zoltom/constants/colors.dart';
import 'package:zoltom/screens/add_product_screen.dart';
import 'package:zoltom/widgets/custom_buttons.dart';
import 'package:zoltom/widgets/custom_textfield.dart';
import 'package:zoltom/widgets/custom_widgets.dart';
import 'package:zoltom/widgets/neumorphic_style.dart';
import 'package:zoltom/widgets/rounded_icon.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                VGap(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(),
                    Row(
                      children: [
                        HGap(5),
                        RoundedIcon(Icons.person),
                        HGap(5),
                        RoundedIcon(Icons.notifications),
                        HGap(5),
                        RoundedIcon(Icons.grid_view_rounded),
                      ],
                    ),
                  ],
                ),
                VGap(10),
                Align(
                  alignment: Alignment.centerLeft,
                  child: bAppText("Hi Username,", 25, mc),
                ),
                VGap(5),
                Align(
                  alignment: Alignment.centerLeft,
                  child: bAppText("Welcome to zoltom", 20, mc),
                ),
                VGap(20),
                Neumorphic(
                  style: NeumStyle(),
                  child: TextField(
                    controller: searchController,
                    decoration: InputDecoration(
                        hintText: "Search Product Name",
                        prefixIcon: Icon(
                          Icons.search,
                          color: black,
                        ),
                        suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: mc,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Icon(
                                  Icons.filter,
                                  color: white,
                                  size: 20,
                                )))),
                  ),
                ),
                VGap(35),
                Expanded(
                  child: Container(
                    decoration: boxDecoration1(Colors.cyan[100], 15),
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          
                          bAppText("No Product Added", 20, mc),
                          VGap(15),
                          nAppText(
                              "Add Products to start tracking warranties & earning rewards",
                              15,
                              mc),
                          VGap(50),
                         
                          SecondaryButton(() {
                            goto(context,AddProductScreen() );
                          }, "Add Products", mc,white,
                              fullWidth(context) - 100, 45)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
