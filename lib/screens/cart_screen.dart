import 'package:flutter/material.dart';
import 'package:store_flutter_app/style/colors.dart' as Style;
import 'package:store_flutter_app/widgets/cart/address_cart_widget.dart';
import 'package:store_flutter_app/widgets/cart/bottom_bar_cart.dart';
import 'package:store_flutter_app/widgets/cart/items_cart_widget.dart';
import 'package:store_flutter_app/widgets/cart/payment_method_cart_widget.dart';
import 'package:store_flutter_app/widgets/cart/promo_code_cart_widget.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.Colors.blackColor,
      appBar: AppBar(
        backgroundColor: Style.Colors.itemColor,
        centerTitle: false,
        title: Text(
          'Checkout',
          style: TextStyle(color: Style.Colors.whiteColor),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          iconSize: 20.0,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AddressCartWidget(),
                    PaymentMethodCartWidget(),
                    ItemsCartWidget(),
                    PromoCodeCartWidget(),
                    SizedBox(height: 150.0,),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: BottomBarCart(),
            ),
          ],
        ),
      ),
    );
  }
}
