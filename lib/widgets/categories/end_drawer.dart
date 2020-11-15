import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:store_flutter_app/style/colors.dart' as Style;

class EndDrawer extends StatefulWidget {
  @override
  _EndDrawerState createState() => _EndDrawerState();
}

class _EndDrawerState extends State<EndDrawer> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(15),
        bottomLeft: Radius.circular(15),
      ),
      child: BackdropFilter(
        filter: new ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
        child: Drawer(
          child: Container(
            color: Style.Colors.blackColor,
            child: Column(
              children: [
                _drawerHeader(),
                _viewChild(),
                _categoryChild(),
                _conditionChild(),
                _materialChild(),
                _colorChild(),
                _brandChild(),
                _sizeChild(),
                _priceRangChild(),
                _drawerBottom(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _drawerHeader() {
    return Container(
      height: 100.0,
      padding: EdgeInsets.all(16.0),
      color: Style.Colors.blackColor,
      child: DrawerHeader(
        padding: EdgeInsets.all(0.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Icons.filter_list,
                  color: Style.Colors.greyColor,
                ),
                SizedBox(
                  width: 8.0,
                ),
                Text(
                  'Filter',
                  style: TextStyle(
                    color: Style.Colors.whiteColor,
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
            IconButton(
              icon: Icon(
                Icons.close,
                color: Style.Colors.greyColor,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }

  Widget _viewChild() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'View',
            style: TextStyle(
              color: Style.Colors.whiteColor,
              fontSize: 16.0,
            ),
          ),
          Row(
            children: [
              Text(
                'Thumbnails',
                style: TextStyle(
                  color: Style.Colors.greyColor,
                  fontSize: 16.0,
                ),
              ),
              SizedBox(
                width: 16.0,
              ),
              Container(
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
            ],
          ),
        ],
      ),
    );
  }

  Widget _categoryChild() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Category',
            style: TextStyle(
              color: Style.Colors.whiteColor,
              fontSize: 16.0,
            ),
          ),
          Row(
            children: [
              Text(
                'Chairs',
                style: TextStyle(
                  color: Style.Colors.greyColor,
                  fontSize: 16.0,
                ),
              ),
              SizedBox(
                width: 16.0,
              ),
              Container(
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
            ],
          ),
        ],
      ),
    );
  }

  Widget _conditionChild() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Condition',
            style: TextStyle(
              color: Style.Colors.whiteColor,
              fontSize: 16.0,
            ),
          ),
          Row(
            children: [
              Text(
                'Brand New',
                style: TextStyle(
                  color: Style.Colors.greyColor,
                  fontSize: 16.0,
                ),
              ),
              SizedBox(
                width: 16.0,
              ),
              Container(
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
            ],
          ),
        ],
      ),
    );
  }

  Widget _materialChild() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Material',
            style: TextStyle(
              color: Style.Colors.whiteColor,
              fontSize: 16.0,
            ),
          ),
          Row(
            children: [
              Text(
                'All materials',
                style: TextStyle(
                  color: Style.Colors.greyColor,
                  fontSize: 16.0,
                ),
              ),
              SizedBox(
                width: 16.0,
              ),
              Container(
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
            ],
          ),
        ],
      ),
    );
  }

  Widget _colorChild() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Colour',
            style: TextStyle(
              color: Style.Colors.whiteColor,
              fontSize: 16.0,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                overflow: Overflow.visible,
                alignment: Alignment.center,
                children: [
                  Positioned(
                    left: 30.0,
                    child: Container(
                      width: 20.0,
                      height: 20.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100.0),
                        color: Color(0xFF606F9A),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 15.0,
                    child: Container(
                      width: 20.0,
                      height: 20.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100.0),
                        color: Color(0xFF7BCA89),
                      ),
                    ),
                  ),
                  Positioned(
                    child: Container(
                      width: 20.0,
                      height: 20.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100.0),
                        color: Color(0xFFF7D6A9),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 50.0,
              ),
              Container(
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
            ],
          ),
        ],
      ),
    );
  }

  Widget _brandChild() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Brand',
            style: TextStyle(
              color: Style.Colors.whiteColor,
              fontSize: 16.0,
            ),
          ),
          Row(
            children: [
              Text(
                'All Brands',
                style: TextStyle(
                  color: Style.Colors.greyColor,
                  fontSize: 16.0,
                ),
              ),
              SizedBox(
                width: 16.0,
              ),
              Container(
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
            ],
          ),
        ],
      ),
    );
  }

  Widget _sizeChild() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Size',
            style: TextStyle(
              color: Style.Colors.whiteColor,
              fontSize: 16.0,
            ),
          ),
          Row(
            children: [
              Text(
                'Large',
                style: TextStyle(
                  color: Style.Colors.greyColor,
                  fontSize: 16.0,
                ),
              ),
              SizedBox(
                width: 16.0,
              ),
              Container(
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
            ],
          ),
        ],
      ),
    );
  }

  Widget _priceRangChild() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Price Range',
            style: TextStyle(
              color: Style.Colors.whiteColor,
              fontSize: 16.0,
            ),
          ),
          Row(
            children: [
              Text(
                '0\$ - 30\$',
                style: TextStyle(
                  color: Style.Colors.greyColor,
                  fontSize: 16.0,
                ),
              ),
              SizedBox(
                width: 16.0,
              ),
              Container(
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
            ],
          ),
        ],
      ),
    );
  }

  Widget _drawerBottom() {
    return Expanded(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 32.0, left: 16.0, right: 16.0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              color: Style.Colors.descColor,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'APPLY FILTERS',
                  style: TextStyle(
                    color: Style.Colors.greyColor,
                    fontSize: 20.0,
                  ),
                ),
              ),
              onPressed: () {},
            ),
          ),
        ),
      ),
    );
  }
}


