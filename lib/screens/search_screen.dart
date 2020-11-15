import 'package:flutter/material.dart';
import 'package:store_flutter_app/style/colors.dart' as Style;
import 'package:store_flutter_app/widgets/home/home_header.dart';
import 'package:store_flutter_app/widgets/search/recenlty_viewed_widget.dart';
import 'package:store_flutter_app/widgets/search/recommended_widget.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.Colors.blackColor,
      appBar: AppBar(
        backgroundColor: Style.Colors.itemColor,
        centerTitle: false,
        title: Text(
          'Search',
          style: TextStyle(color: Style.Colors.whiteColor),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          iconSize: 20.0,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
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
                height: 16.0,
              ),
              RecentlyViewWidget(),
              SizedBox(
                height: 16.0,
              ),
              RecommendedWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
