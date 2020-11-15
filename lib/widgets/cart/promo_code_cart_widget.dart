import 'package:flutter/material.dart';
import 'package:store_flutter_app/style/colors.dart' as Style;

class PromoCodeCartWidget extends StatefulWidget {
  @override
  _PromoCodeCartWidgetState createState() => _PromoCodeCartWidgetState();
}

class _PromoCodeCartWidgetState extends State<PromoCodeCartWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Style.Colors.itemColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Colors.black26.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Promo code',
                    style: TextStyle(
                      color: Style.Colors.whiteColor,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.confirmation_number,
                        color: Style.Colors.primaryColor,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Add Promo Code',
                        style: TextStyle(
                          color: Style.Colors.primaryColor,
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                width: 30.0,
                height: 30.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  color: Colors.white10,
                ),
                child: IconButton(
                  padding: EdgeInsets.all(0),
                  icon: Icon(
                    Icons.keyboard_arrow_right,
                    color: Style.Colors.whiteColor,
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
