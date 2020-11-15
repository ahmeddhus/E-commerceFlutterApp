import 'package:flutter/material.dart';
import 'package:store_flutter_app/screens/search_screen.dart';
import 'package:store_flutter_app/style/colors.dart' as Style;
import 'package:store_flutter_app/widgets/categories/header_categories.dart';
import 'package:store_flutter_app/widgets/home/best_selling.dart';

import 'cart_screen.dart';

class CategoriesScreen extends StatefulWidget {
  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {

  void _openEndDrawer() {
    Scaffold.of(context).openEndDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.Colors.blackColor,
      appBar: AppBar(
        backgroundColor: Style.Colors.blackColor,
        centerTitle: true,
        leading: Icon(
          Icons.menu,
          color: Style.Colors.whiteColor,
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.search,
                color: Style.Colors.whiteColor,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SearchScreen()));
              }),
          IconButton(
            icon: Icon(
              Icons.filter_list,
              color: Style.Colors.whiteColor,
            ),
            onPressed: _openEndDrawer,
          ),
          IconButton(
              icon: Icon(
                Icons.shopping_bag_outlined,
                color: Style.Colors.whiteColor,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CartScreen()));
              }),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 8.0,
              ),
              HeaderCategoriesWidget(),
              BestSelling(),
            ],
          ),
        ),
      ),
    );
  }

}
