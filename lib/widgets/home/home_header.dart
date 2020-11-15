import 'package:flutter/material.dart';
import 'package:store_flutter_app/style/colors.dart' as Style;

class HomeHeader extends StatefulWidget {
  @override
  _HomeHeaderState createState() => _HomeHeaderState();
}

class _HomeHeaderState extends State<HomeHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'What item are you\nlooking for?',
              style: TextStyle(
                color: Style.Colors.whiteColor,
                fontSize: 24.0,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              autofocus: false,
              decoration: InputDecoration(
                fillColor: Colors.white10,
                prefixIcon: Icon(
                  Icons.search,
                  color: Style.Colors.greyColor,
                ),
                border: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(10.0),
                  ),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                labelStyle: TextStyle(color: Style.Colors.whiteColor),
                hintText: 'Search your Product',
                hintStyle: TextStyle(
                  color: Style.Colors.greyColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
