import 'package:flutter/material.dart';
import 'package:glover/widgets/my_flutter_icon_icons.dart';

import '../constants/appColors.dart';
import 'homeScreen.dart';

class mainScreen extends StatefulWidget {
  @override
  _mainScreenState createState() => _mainScreenState();
}

class _mainScreenState extends State<mainScreen> {
  int _currentIndex = 0;
  TextEditingController _searchController = TextEditingController();

  List<Widget> _screens = [
    HomeScreen(),
    Center(child: Text('Profile Screen')),
    Center(child: Text('Cart Screen')),
    Center(child: Text('Add Screen')),
    Center(child: Text('History Screen')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainScreenBackground,
      body: Stack(
        children: [
          _screens[_currentIndex],
          Positioned(
            top: 3,
            left: 10,
            right: 10,
            child: Container(
              height: 90.0,
              padding: EdgeInsets.only(top: 10),
              color: Colors.transparent, // Customize the background color
              child: Row(
                children: [
                  // TODO: HarmBuger Icon
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white
                    ),
                    child: IconButton(
                      icon: Icon(Icons.menu_rounded),
                      color: Colors.black, // Customize the icon color
                      onPressed: () {
                        // Perform hamburger icon action
                      },
                    ),
                  ),
                  //TODO: Search Bar functionality
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(right: 5, left: 0),
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.search),
                            onPressed: () {
                              String query = _searchController.text;
                              setState(() {
                                _searchController.clear();
                              });
                              // Perform search action with the query
                            },
                          ),
                          Expanded(
                            child: TextField(
                              controller: _searchController,
                              decoration: InputDecoration(
                                hintText: 'Search',
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          Container(
                            width: 58,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(12),
                                topRight: Radius.circular(12)
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.6),
                                  offset: Offset(0, 1.2),
                                  blurRadius: 1,
                                  spreadRadius: 2,
                                ),
                                BoxShadow(
                                  color: Colors.white,
                                  offset: Offset(0, -1.2),
                                  blurRadius: 1,
                                  spreadRadius: 3
                                )
                              ]
                            ),
                            child: Row(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              // mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  onTap: (){},
                                  child: Icon(
                                    Icons.arrow_drop_down_rounded
                                  ),
                                ),
                                GestureDetector(
                                  onTap: (){},
                                  child: Icon(
                                      Icons.shopping_bag_outlined
                                  ),
                                ),
                              ],
                            ),
                          )

                        ],
                      ),
                    ),
                  ),
                  // TODO: Notification Icon controll and customization
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white
                    ),
                    child: IconButton(
                      icon: Icon(Icons.notifications, size: 26,),
                      color: Colors.black, // Customize the icon color
                      onPressed: () {
                        // Perform notification action
                      },
                    ),
                  ),

                ],
              ),
            ),
          ),
          SizedBox(height: 20,),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 55,
              decoration: BoxDecoration(
                color: AppColors.mainScreenBottomBar,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12),
                  topLeft: Radius.circular(12),
                  // bottomLeft: Radius.circular(22),
                  // bottomRight: Radius.circular(22),
                )
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 18,
                  right: 18
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                      onTap: (){},
                      child: Icon(
                        MyFlutterIcon.home,
                        color: AppColors.mainScreenBottonBarIcons,
                      ),
                    ),
                    Icon(
                      MyFlutterIcon.tab,
                      color: AppColors.mainScreenBottonBarIcons,
                    ),
                    Icon(
                      MyFlutterIcon.add,
                      color: AppColors.mainScreenBottonBarIcons,
                    ),
                    Icon(
                      MyFlutterIcon.cart_outlined,
                      color: AppColors.mainScreenBottonBarIcons,
                    ),
                    Icon(
                      MyFlutterIcon.profile,
                      color: AppColors.mainScreenBottonBarIcons,
                    )

                  ],
                ),
              ),
            ),
          )
        ],
      ),

    );
  }
}

// void main() {
//   runApp(MaterialApp(
//     home: mainScreen(),
//   ));
// }
