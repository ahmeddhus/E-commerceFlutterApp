import 'package:flutter/material.dart';
import 'package:store_flutter_app/model/item_model.dart';
import 'package:store_flutter_app/style/colors.dart' as Style;
import 'package:store_flutter_app/utils/constants.dart';

class RecentlyViewWidget extends StatefulWidget {
  @override
  _RecentlyViewWidgetState createState() => _RecentlyViewWidgetState();
}

class _RecentlyViewWidgetState extends State<RecentlyViewWidget> {
  List<ItemModel> items = [
    ItemModel.recentlyViewed('Wooden Table', categoryImg4, '\$ 290'),
    ItemModel.recentlyViewed('Wavy Chair', bestSellingImg2, '\$ 100'),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 130.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recently View',
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
                    'Clear',
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
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return _itemList(items[index]);
                },
                itemCount: items.length,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _itemList(ItemModel item) {
    return Container(
      margin: EdgeInsets.only(right: 8.0),
      padding: EdgeInsets.all(5.0),
      width: 220.0,
      height: 60.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.white10,
      ),
      child: Row(
        children: [
          Container(
            height: 70.0,
            width: 70.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Container(
                child: Image.asset(
                  '${item.itemImg}',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${item.itemName}',
                    style: TextStyle(
                      color: Style.Colors.whiteColor,
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    '${item.itemCost}',
                    style: TextStyle(
                      color: Style.Colors.primaryColor,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
