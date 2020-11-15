import 'package:flutter/material.dart';
import 'package:store_flutter_app/utils/constants.dart';
import 'cart_screen.dart';
import 'file:///E:/Edu/MyProjects/Flutter/store_flutter_app/lib/widgets/offers/home_categories.dart';
import 'file:///E:/Edu/MyProjects/Flutter/store_flutter_app/lib/widgets/home/home_header.dart';
import 'package:store_flutter_app/widgets/home/best_selling.dart';
import 'package:store_flutter_app/style/colors.dart' as Style;

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.Colors.blackColor,
      appBar: AppBar(
        backgroundColor: Style.Colors.blackColor,
        centerTitle: true,
        title: Text(
          'Furnity',
          style: TextStyle(color: Style.Colors.whiteColor),
        ),
        leading: Icon(
          Icons.menu,
          color: Style.Colors.whiteColor,
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.shopping_bag_outlined,
                color: Style.Colors.whiteColor,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CartScreen()));
              })
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
              HomeHeader(),
              SizedBox(
                height: 20.0,
              ),
              HomeCategories(),
              SizedBox(
                height: 30.0,
              ),
              BestSelling(),
            ],
          ),
        ),
      ),
    );
  }
}
