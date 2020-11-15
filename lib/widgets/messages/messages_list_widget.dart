import 'package:flutter/material.dart';
import 'package:store_flutter_app/model/messages_model.dart';
import 'package:store_flutter_app/style/colors.dart' as Style;

class MessagesListWidget extends StatefulWidget {
  @override
  _MessagesListWidgetState createState() => _MessagesListWidgetState();
}

class _MessagesListWidgetState extends State<MessagesListWidget> {
  List<MessagesModel> messageModel = [
    MessagesModel('Smiley\'s Ston', 'Hello Smiley, Is the product available?',
        'SS', '12:48 PM'),
    MessagesModel(
        'Beauty Supplies Store', 'Where\'s your location?', 'BS', '2:13 PM'),
    MessagesModel('Loveless Bees', 'Okay, Deal', 'LB', 'Yesterday'),
    MessagesModel('FSHN Boutique', 'How much?', 'FB', '15 Sep'),
    MessagesModel('Anna\'s Corner', 'Okay', 'AC', '17 Aug'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              leading: _contactImg('${messageModel[0].contactName}', Color(0xFFED9E9D)),
              title: Text(
                '${messageModel[0].contactName}',
                style: TextStyle(
                  color: Style.Colors.whiteColor,
                ),
              ),
              subtitle: Text(
                '${messageModel[0].contactMsg}',
                style: TextStyle(
                  color: Style.Colors.whiteColor,
                ),
              ),
              trailing: Text(
                '${messageModel[0].msgDate}',
                style: TextStyle(
                  color: Style.Colors.whiteColor,
                ),
              ),
            ),
            Container(
                width: MediaQuery.of(context).size.width - 100.0,
                child: Divider(
                  color: Style.Colors.greyColor,
                )),
            ListTile(
              leading: _contactImg('${messageModel[1].contactName}', Color(0xFFF5C677)),
              title: Text(
                '${messageModel[1].contactName}',
                style: TextStyle(
                  color: Style.Colors.whiteColor,
                ),
              ),
              subtitle: Text(
                '${messageModel[1].contactMsg}',
                style: TextStyle(
                  color: Style.Colors.whiteColor,
                ),
              ),
              trailing: Text(
                '${messageModel[1].msgDate}',
                style: TextStyle(
                  color: Style.Colors.whiteColor,
                ),
              ),
            ),
            Container(
                width: MediaQuery.of(context).size.width - 100.0,
                child: Divider(
                  color: Style.Colors.greyColor,
                )),
            ListTile(
              leading: _contactImg('${messageModel[2].contactName}', Color(0xFFBBB9FE)),
              title: Text(
                '${messageModel[2].contactName}',
                style: TextStyle(
                  color: Style.Colors.whiteColor,
                ),
              ),
              subtitle: Text(
                '${messageModel[2].contactMsg}',
                style: TextStyle(
                  color: Style.Colors.whiteColor,
                ),
              ),
              trailing: Text(
                '${messageModel[2].msgDate}',
                style: TextStyle(
                  color: Style.Colors.whiteColor,
                ),
              ),
            ),
            Container(
                width: MediaQuery.of(context).size.width - 100.0,
                child: Divider(
                  color: Style.Colors.greyColor,
                )),
            ListTile(
              leading: _contactImg('${messageModel[3].contactName}', Color(0xFF91E0FB)),
              title: Text(
                '${messageModel[0].contactName}',
                style: TextStyle(
                  color: Style.Colors.whiteColor,
                ),
              ),
              subtitle: Text(
                '${messageModel[3].contactMsg}',
                style: TextStyle(
                  color: Style.Colors.whiteColor,
                ),
              ),
              trailing: Text(
                '${messageModel[3].msgDate}',
                style: TextStyle(
                  color: Style.Colors.whiteColor,
                ),
              ),
            ),
            Container(
                width: MediaQuery.of(context).size.width - 100.0,
                child: Divider(
                  color: Style.Colors.greyColor,
                )),
            ListTile(
              leading: _contactImg('${messageModel[4].contactName}', Color(0xFFED9E9D)),
              title: Text(
                '${messageModel[4].contactName}',
                style: TextStyle(
                  color: Style.Colors.whiteColor,
                ),
              ),
              subtitle: Text(
                '${messageModel[4].contactMsg}',
                style: TextStyle(
                  color: Style.Colors.whiteColor,
                ),
              ),
              trailing: Text(
                '${messageModel[4].msgDate}',
                style: TextStyle(
                  color: Style.Colors.whiteColor,
                ),
              ),
            ),
            Container(
                width: MediaQuery.of(context).size.width - 100.0,
                child: Divider(
                  color: Style.Colors.greyColor,
                )),
          ],
        ),
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
