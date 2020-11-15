import 'package:flutter/material.dart';
import 'package:store_flutter_app/style/colors.dart' as Style;
import 'package:store_flutter_app/widgets/offers/deal_of_the_day_widget.dart';
import 'package:store_flutter_app/widgets/offers/discount_widget.dart';
import 'package:store_flutter_app/widgets/offers/new_widget.dart';
import 'package:store_flutter_app/widgets/offers/weekly_featured_widget.dart';

class HomeCategories extends StatefulWidget {
  @override
  _HomeCategoriesState createState() => _HomeCategoriesState();
}

class _HomeCategoriesState extends State<HomeCategories>
    with TickerProviderStateMixin {

  final List<String> categories = [
    "New",
    "Weekly Featured",
    "Discount",
    "Deal Of The Day",
  ];

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: categories.length, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320.0,
      width: MediaQuery.of(context).size.width,
      child: DefaultTabController(
        length: categories.length,
        child: Scaffold(
          backgroundColor: Style.Colors.blackColor,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(50.0),
            child: AppBar(
              elevation: 0.0,
              backgroundColor: Style.Colors.blackColor,
              bottom: TabBar(
                controller: _tabController,
                indicatorColor: Style.Colors.primaryColor,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorWeight: 3.0,
                unselectedLabelColor: Style.Colors.whiteColor,
                labelColor: Style.Colors.primaryColor,
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(
                    width: 3.0,
                    color: Style.Colors.primaryColor,
                  ),
                  insets: EdgeInsets.symmetric(horizontal: 50.0),
                ),
                isScrollable: true,
                tabs: categories.map((e) {
                  return Container(
                    padding: EdgeInsets.only(bottom: 15.0, top: 10.0),
                    child: Text(
                      e.toUpperCase(),
                      style: TextStyle(
                          fontSize: 14.0, fontWeight: FontWeight.bold),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
          body: Container(
            margin: EdgeInsets.only(top: 30.0),
            child: TabBarView(
              controller: _tabController,
              physics: AlwaysScrollableScrollPhysics(),
              children: [
                NewWidget(),
                WeeklyFeaturedWidget(),
                DiscountWidget(),
                DealOfTheDayWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
