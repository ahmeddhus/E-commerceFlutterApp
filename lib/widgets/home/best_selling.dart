import 'package:flutter/material.dart';
import 'package:store_flutter_app/model/item_model.dart';
import 'package:store_flutter_app/style/colors.dart' as Style;
import 'package:store_flutter_app/utils/constants.dart';

class BestSelling extends StatefulWidget {
  @override
  _BestSellingState createState() => _BestSellingState();
}

class _BestSellingState extends State<BestSelling> {
  List<ItemModel> bestSellingList = [
    ItemModel.bestSelling(
        'Chair', bestSellingImg1, 'Green Home Chair', '\$ 100', false),
    ItemModel.bestSelling(
        'Chair', bestSellingImg2, 'Purple Home Chair', '\$ 100', false),
    ItemModel.bestSelling(
        'Chair', bestSellingImg2, 'Purple Home Chair', '\$ 100', false),
    ItemModel.bestSelling(
        'Chair', bestSellingImg1, 'Green Home Chair', '\$ 100', false),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Best Selling',
                  style: TextStyle(
                    color: Style.Colors.whiteColor,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Show all',
                      style: TextStyle(
                        color: Style.Colors.whiteColor,
                        fontSize: 14.0,
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: Style.Colors.whiteColor,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: bestSellingList.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
                childAspectRatio: 2 / 3,
              ),
              itemBuilder: (context, index) {
                return bestSellingCard(index);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget bestSellingCard(int index) {
    ItemModel bestSellingModel = bestSellingList[index];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.width / 2 - 30,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Container(
                  child: Image.asset(
                    '${bestSellingModel.itemImg}',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Positioned(
              top: -5,
              right: -4,
              child: IconButton(
                onPressed: () {
                  setState(() {
                    if (bestSellingModel.isItemFav)
                      bestSellingModel.isItemFav = false;
                    else
                      bestSellingModel.isItemFav = true;
                  });
                },
                icon: bestSellingModel.isItemFav
                    ? Icon(
                        Icons.favorite_sharp,
                        color: Style.Colors.greyColor,
                      )
                    : Icon(
                        Icons.favorite_border_sharp,
                        color: Style.Colors.primaryColor,
                      ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 8.0,
        ),
        Text(
          '${bestSellingModel.itemName}',
          style: TextStyle(
            color: Style.Colors.whiteColor,
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          '${bestSellingModel.itemDesc}',
          style: TextStyle(
            color: Style.Colors.descColor,
            fontSize: 14.0,
          ),
        ),
        Text(
          '${bestSellingModel.itemCost}',
          style: TextStyle(
            color: Style.Colors.primaryColor,
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
