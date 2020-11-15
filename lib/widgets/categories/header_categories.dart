import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:store_flutter_app/model/categories_model.dart';
import 'package:store_flutter_app/style/colors.dart' as Style;
import 'package:store_flutter_app/utils/constants.dart';

class HeaderCategoriesWidget extends StatefulWidget {
  @override
  _HeaderCategoriesWidgetState createState() => _HeaderCategoriesWidgetState();
}

class _HeaderCategoriesWidgetState extends State<HeaderCategoriesWidget> {

  List<CategoriesModel> categoriesList = [
    CategoriesModel('Chairs', categoryImg1, 356),
    CategoriesModel('Lighting', categoryImg2, 356),
    CategoriesModel('Pillows', categoryImg3, 356),
    CategoriesModel('Tabletop', categoryImg4, 356),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Categories',
                style: TextStyle(
                  color: Style.Colors.whiteColor,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(
                Icons.widgets_outlined,
                color: Style.Colors.whiteColor,
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            height: 250.0,
            child: Swiper(
              itemBuilder: (BuildContext context, int index) {
                return categoryCard(index);
              },
              itemCount: categoriesList.length,
              viewportFraction: 0.35,
              scale: 0.6,
              loop: true,
              autoplay: false,
            ),
          ),
        ],
      ),
    );
  }

  Widget categoryCard(int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Style.Colors.blackColor,
            width: 220.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Container(
                height: 140.0,
                child: Image.asset(
                  '${categoriesList[index].categoryImg}',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          SizedBox(height: 8.0,),
          Text(
            '${categoriesList[index].categoryName}',
            style: TextStyle(
              color: Style.Colors.whiteColor,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '${categoriesList[index].categoryQty.toString()} Items',
            style: TextStyle(
              color: Style.Colors.descColor,
              fontSize: 14.0,
            ),
          ),
        ],
      ),
    );
  }
}
