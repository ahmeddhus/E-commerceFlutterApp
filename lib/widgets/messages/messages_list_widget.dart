import 'package:flutter/material.dart';
import 'package:store_flutter_app/model/messages_model.dart';
import 'package:store_flutter_app/style/colors.dart' as Style;

class MessagesListWidget extends StatefulWidget {
  @override
  _MessagesListWidgetState createState() => _MessagesListWidgetState();
}

class _MessagesListWidgetState extends State<MessagesListWidget> {
  List<MessagesModel> messagesModel = [
    MessagesModel('Smiley\'s Ston', 'Hello Smiley, Is the product available',
        'SS', '12:48 PM', Color(0xFFED9E9D)),
    MessagesModel('Beauty Supplies Store', 'Where\'s your location?', 'BS',
        '2:13 PM', Color(0xFFF5C677)),
    MessagesModel(
        'Loveless Bees', 'Okay, Deal', 'LB', 'Yesterday', Color(0xFFBBB9FE)),
    MessagesModel(
        'FSHN Boutique', 'How much?', 'FB', '15 Sep', Color(0xFF91E0FB)),
    MessagesModel('Anna\'s Corner', 'Okay', 'AC', '17 Aug', Color(0xFFAFE4E6)),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Expanded(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: messagesModel.length,
          itemBuilder: (BuildContext context, int index) {
            return _listItem(messagesModel[index]);
          },
        ),
      ),
    );
  }

  Widget _listItem(MessagesModel model) {
    return Container(
      height: 100.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            leading: _contactImg('${model.contactName}', model.contactColor),
            title: Text(
              '${model.contactName}',
              style: TextStyle(
                color: Style.Colors.whiteColor,
              ),
            ),
            subtitle: Text(
              '${model.contactMsg}',
              style: TextStyle(
                color: Style.Colors.whiteColor,
              ),
            ),
            trailing: Text(
              '${model.msgDate}',
              style: TextStyle(
                color: Style.Colors.whiteColor,
              ),
            ),
          ),
          SizedBox(height: 8.0,),
          Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width - 100.0,
              child: Divider(
                color: Style.Colors.greyColor,
                thickness: 1.5,
              )),
        ],
      ),
    );
  }

  Widget _contactImg(String contactName, Color contactImgColor) {
    return Container(
      alignment: Alignment.center,
      height: 50.0,
      width: 50.0,
      decoration: BoxDecoration(
        color: contactImgColor,
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: Text(
        '${getInitials(contactName)}',
        style: TextStyle(
          color: Style.Colors.blackColor,
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  String getInitials(String contactName) {
    List<String> names = contactName.split(' ');
    String initialImg = '';
    String initials = '';
    int numWords = 2;

    if (numWords < names.length) {
      numWords = names.length;
    }
    for (var i = 0; i < numWords; i++) {
      initials += '${names[i][0]}';
    }

    initialImg += initials[0] + initials[1];

    return initialImg;
  }

}
