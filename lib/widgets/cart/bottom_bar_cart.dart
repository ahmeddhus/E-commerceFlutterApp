import 'package:flutter/material.dart';
import 'package:store_flutter_app/style/colors.dart' as Style;

class BottomBarCart extends StatefulWidget {
  @override
  _BottomBarCartState createState() => _BottomBarCartState();
}

class _BottomBarCartState extends State<BottomBarCart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Style.Colors.bottomBarColor,
      width: MediaQuery.of(context).size.width,
      height: 110,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(left: 8.0, top: 16.0, bottom: 8.0),
                child: Text(
                  "Total",
                  style: TextStyle(
                      color: Style.Colors.descColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                child: Text(
                  "\$3,327.22",
                  style: TextStyle(
                      color: Style.Colors.whiteColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                child: Text(
                  "Free Domestic Shipping",
                  style: TextStyle(
                      color: Style.Colors.descColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
              color: Style.Colors.primaryColor,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'PLACE ORDER',
                  style: TextStyle(
                    color: Style.Colors.blackColor,
                    fontSize: 20.0,
                  ),
                ),
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
