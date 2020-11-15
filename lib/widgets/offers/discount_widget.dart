import 'package:flutter/material.dart';
import 'package:store_flutter_app/style/colors.dart' as Style;
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:store_flutter_app/utils/constants.dart';

class DiscountWidget extends StatefulWidget {
  @override
  _DiscountWidgetState createState() => _DiscountWidgetState();
}

class _DiscountWidgetState extends State<DiscountWidget> {
  double _currentIndex = 0.1;
  int _currentPage = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Swiper(
            itemBuilder: (BuildContext context, int index) {
              return offerCard();
            },
            onIndexChanged: (value) {
              setState(() {
                _currentIndex = (1 / 6) * (value.toDouble() + 1);
                _currentPage = value + 1;
              });
            },
            itemCount: 6,
            viewportFraction: 0.9,
            scale: 0.9,
            loop: false,
            autoplay: false,
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Text(
          '$_currentPage/6',
          style: TextStyle(
            color: Style.Colors.greyColor,
            fontSize: 16.0,
          ),
        ),
        SizedBox(
          height: 8.0,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 60.0, left: 8.0),
          child: LinearProgressIndicator(
            backgroundColor: Style.Colors.greyColor,
            value: _currentIndex,
            valueColor: AlwaysStoppedAnimation(Style.Colors.whiteColor),
          ),
        ),
      ],
    );
  }

  Widget offerCard() {
    return Container(
      width: MediaQuery.of(context).size.width - 35,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Container(
          child: Image.asset(
            '$imgPath1',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
