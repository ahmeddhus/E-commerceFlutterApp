import 'package:flutter/material.dart';
import 'package:store_flutter_app/screens/cart_screen.dart';
import 'package:store_flutter_app/style/colors.dart' as Style;
import 'package:store_flutter_app/widgets/messages/messages_header_widget.dart';
import 'package:store_flutter_app/widgets/messages/messages_list_widget.dart';

class MessagesScreen extends StatefulWidget {
  @override
  _MessagesScreenState createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.Colors.blackColor,
      appBar: AppBar(
        backgroundColor: Style.Colors.blackColor,
        centerTitle: true,
        title: Text(
          'Furnity',
          style: TextStyle(color: Style.Colors.whiteColor),
        ),
        leading: Icon(
          Icons.menu,
          color: Style.Colors.whiteColor,
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.shopping_bag_outlined,
                color: Style.Colors.whiteColor,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CartScreen()));
              })
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MessagesHeaderWidget(),
              SizedBox(
                height: 16.0,
              ),
              MessagesListWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
