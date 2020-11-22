import 'package:flutter/material.dart';
import 'package:store_flutter_app/style/colors.dart' as Style;
import 'cart_screen.dart';

class AccountScreen extends StatefulWidget {
  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
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
              _firstContainer(),
              SizedBox(
                height: 8.0,
              ),
              _secondContainer(),
              SizedBox(
                height: 8.0,
              ),
              _thirdContainer(),
              SizedBox(
                height: 8.0,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _firstContainer() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Style.Colors.itemColor,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black26.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          children: [
            ListTile(
              leading: Icon(
                Icons.person,
                size: 25.0,
                color: Style.Colors.greyColor,
              ),
              title: Text(
                'Personal Info.',
                style: TextStyle(
                  color: Style.Colors.whiteColor,
                ),
              ),
              trailing: Container(
                width: 20.0,
                height: 20.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  color: Colors.white10,
                ),
                child: IconButton(
                  padding: EdgeInsets.all(0),
                  icon: Icon(
                    Icons.keyboard_arrow_right,
                    color: Style.Colors.greyColor,
                    size: 16.0,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.pending_actions,
                size: 25.0,
                color: Style.Colors.greyColor,
              ),
              title: Text(
                'Pending Deals',
                style: TextStyle(
                  color: Style.Colors.whiteColor,
                ),
              ),
              trailing: Container(
                width: 20.0,
                height: 20.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  color: Colors.white10,
                ),
                child: IconButton(
                  padding: EdgeInsets.all(0),
                  icon: Icon(
                    Icons.keyboard_arrow_right,
                    color: Style.Colors.greyColor,
                    size: 16.0,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.assignment_turned_in_rounded,
                size: 25.0,
                color: Style.Colors.greyColor,
              ),
              title: Text(
                'Pending Orders',
                style: TextStyle(
                  color: Style.Colors.whiteColor,
                ),
              ),
              trailing: Container(
                width: 20.0,
                height: 20.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  color: Colors.white10,
                ),
                child: IconButton(
                  padding: EdgeInsets.all(0),
                  icon: Icon(
                    Icons.keyboard_arrow_right,
                    color: Style.Colors.greyColor,
                    size: 16.0,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _secondContainer() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Style.Colors.itemColor,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black26.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          children: [
            ListTile(
              leading: Icon(
                Icons.insert_invitation,
                size: 25.0,
                color: Style.Colors.greyColor,
              ),
              title: Text(
                'Invite Friends',
                style: TextStyle(
                  color: Style.Colors.whiteColor,
                ),
              ),
              trailing: Container(
                width: 20.0,
                height: 20.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  color: Colors.white10,
                ),
                child: IconButton(
                  padding: EdgeInsets.all(0),
                  icon: Icon(
                    Icons.keyboard_arrow_right,
                    color: Style.Colors.greyColor,
                    size: 16.0,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.headset_mic,
                size: 25.0,
                color: Style.Colors.greyColor,
              ),
              title: Text(
                'Customer Support',
                style: TextStyle(
                  color: Style.Colors.whiteColor,
                ),
              ),
              trailing: Container(
                width: 20.0,
                height: 20.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  color: Colors.white10,
                ),
                child: IconButton(
                  padding: EdgeInsets.all(0),
                  icon: Icon(
                    Icons.keyboard_arrow_right,
                    color: Style.Colors.greyColor,
                    size: 16.0,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.star_rate_outlined,
                size: 25.0,
                color: Style.Colors.greyColor,
              ),
              title: Text(
                'Rate Out App',
                style: TextStyle(
                  color: Style.Colors.whiteColor,
                ),
              ),
              trailing: Container(
                width: 20.0,
                height: 20.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  color: Colors.white10,
                ),
                child: IconButton(
                  padding: EdgeInsets.all(0),
                  icon: Icon(
                    Icons.keyboard_arrow_right,
                    color: Style.Colors.greyColor,
                    size: 16.0,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.rate_review_outlined,
                size: 25.0,
                color: Style.Colors.greyColor,
              ),
              title: Text(
                'Make a Suggestion',
                style: TextStyle(
                  color: Style.Colors.whiteColor,
                ),
              ),
              trailing: Container(
                width: 20.0,
                height: 20.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  color: Colors.white10,
                ),
                child: IconButton(
                  padding: EdgeInsets.all(0),
                  icon: Icon(
                    Icons.keyboard_arrow_right,
                    color: Style.Colors.greyColor,
                    size: 16.0,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _thirdContainer() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Style.Colors.itemColor,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black26.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          children: [
            ListTile(
              leading: Icon(
                Icons.edit_location_outlined,
                size: 25.0,
                color: Style.Colors.greyColor,
              ),
              title: Text(
                'Shipping Address',
                style: TextStyle(
                  color: Style.Colors.whiteColor,
                ),
              ),
              trailing: Container(
                width: 20.0,
                height: 20.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  color: Colors.white10,
                ),
                child: IconButton(
                  padding: EdgeInsets.all(0),
                  icon: Icon(
                    Icons.keyboard_arrow_right,
                    color: Style.Colors.greyColor,
                    size: 16.0,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.credit_card_rounded,
                size: 25.0,
                color: Style.Colors.greyColor,
              ),
              title: Text(
                'Payment Method',
                style: TextStyle(
                  color: Style.Colors.whiteColor,
                ),
              ),
              trailing: Container(
                width: 20.0,
                height: 20.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  color: Colors.white10,
                ),
                child: IconButton(
                  padding: EdgeInsets.all(0),
                  icon: Icon(
                    Icons.keyboard_arrow_right,
                    color: Style.Colors.greyColor,
                    size: 16.0,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
