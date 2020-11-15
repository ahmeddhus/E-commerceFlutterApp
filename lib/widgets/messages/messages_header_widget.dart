import 'package:flutter/material.dart';
import 'package:store_flutter_app/style/colors.dart' as Style;

class MessagesHeaderWidget extends StatefulWidget {
  @override
  _MessagesHeaderWidgetState createState() => _MessagesHeaderWidgetState();
}

class _MessagesHeaderWidgetState extends State<MessagesHeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 8.0,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Messages',
            style: TextStyle(
                color: Style.Colors.whiteColor,
                fontSize: 24.0,
                fontWeight: FontWeight.bold
            ),
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
            hintText: 'Search contacts',
            hintStyle: TextStyle(
              color: Style.Colors.greyColor,
            ),
          ),
        ),
      ],
    );
  }
}
