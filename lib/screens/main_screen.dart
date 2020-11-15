import 'package:flutter/material.dart';
import 'package:store_flutter_app/screens/categories_screen.dart';
import 'package:store_flutter_app/screens/home_screen.dart';
import 'package:store_flutter_app/style/colors.dart' as Style;
import 'package:store_flutter_app/widgets/categories/end_drawer.dart';

import 'account_screen.dart';
import 'messages_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  List<StatefulWidget> widgets = [
    HomeScreen(),
    CategoriesScreen(),
    MessagesScreen(),
    AccountScreen(),
  ];

  //defining the global keys for BottomNavigation Bar Icons
  GlobalKey _homeIconKey = GlobalKey();
  GlobalKey _categoriesIconKey = GlobalKey();
  GlobalKey _messagesIconKey = GlobalKey();
  GlobalKey _accountIconKey = GlobalKey();

  // Defining the initial Position of the tile
  Offset _tilePosition = Offset(34.1, 704.3);

  _changePosition(int index) {
    List<GlobalKey> _keyList = [
      _homeIconKey,
      _categoriesIconKey,
      _messagesIconKey,
      _accountIconKey
    ];

    RenderBox _icon = _keyList[index].currentContext.findRenderObject();
    Offset position = _icon.localToGlobal(Offset.zero);
    _tilePosition = position;
    print('$_tilePosition');
    _selectedIndex = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.Colors.blackColor,
      bottomNavigationBar: Stack(children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: 82.0,
          margin: EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
          decoration: BoxDecoration(
            color: Style.Colors.bottomBarColor,
            border: Border.all(
                color: Style.Colors.bottomBarColor.withOpacity(0.6),
                width: 0.5),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.0),
              topLeft: Radius.circular(20.0),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 8.0,
              ),
              Container(
                height: 2.0,
                width: 70.0,
                color: Style.Colors.greyColor,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.all(0.1),
                height: 20.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50.0),
                    topLeft: Radius.circular(50.0),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0.0, 16.0, 0.0, 0.0),
          child: Theme(
            data: Theme.of(context).copyWith(
                canvasColor: Style.Colors.bottomBarColor,
                primaryColor: Style.Colors.primaryColor,
                textTheme: Theme.of(context).textTheme.copyWith(
                        caption: new TextStyle(
                      color: Style.Colors.greyColor,
                    ))),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              showSelectedLabels: true,
              iconSize: 24.0,
              selectedIconTheme:
                  IconThemeData(color: Style.Colors.primaryColor),
              selectedLabelStyle: TextStyle(color: Style.Colors.primaryColor),
              currentIndex: _selectedIndex,
              elevation: 0.0,
              onTap: (index) {
                print(index);
                _changePosition(index);
              },
              backgroundColor: Colors.transparent,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_outlined,
                    key: _homeIconKey,
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.apps,
                    key: _categoriesIconKey,
                  ),
                  label: 'Categories',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.mail_outline,
                    key: _messagesIconKey,
                  ),
                  label: 'Messages',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person_outline,
                    key: _accountIconKey,
                  ),
                  label: 'Account',
                ),
              ],
            ),
          ),
        )
      ]),
      endDrawer: EndDrawer(),
      endDrawerEnableOpenDragGesture: false,
      body: widgets[_selectedIndex],
    );
  }
}
