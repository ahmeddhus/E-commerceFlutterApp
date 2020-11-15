import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store_flutter_app/style/colors.dart' as Style;

class RecommendedWidget extends StatefulWidget {
  @override
  _RecommendedWidgetState createState() => _RecommendedWidgetState();
}

class _RecommendedWidgetState extends State<RecommendedWidget> {
  List<String> recommends = [
    'Chairs',
    'Armchairs',
    'Tables',
    'Pillows',
    'Lighting',
    'Tabletop'
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recommended',
                  style: TextStyle(
                    color: Style.Colors.whiteColor,
                    fontSize: 16.0,
                  ),
                ),
                FlatButton(
                  minWidth: 10.0,
                  padding: EdgeInsets.only(left: 8.0, right: 8.0),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  onPressed: () {},
                  child: Text(
                    'Refresh',
                    style: TextStyle(
                      color: Style.Colors.greyColor,
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16.0,
            ),
            Wrap(
              children: recommends
                  .map((e) => Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: Colors.white10,
                          ),
                          child: FlatButton(
                            minWidth: 10.0,
                            padding: EdgeInsets.only(left: 8.0, right: 8.0),
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            child: Text(
                              '$e',
                              style: TextStyle(
                                color: Style.Colors.whiteColor,
                                fontSize: 16.0,
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
