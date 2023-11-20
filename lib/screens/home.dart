import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  TextEditingController _searchController = TextEditingController();

  List<Widget> _screens = [
    Center(child: Text('Home Screen')),
    Center(child: Text('Profile Screen')),
    Center(child: Text('Cart Screen')),
    Center(child: Text('Add Screen')),
    Center(child: Text('History Screen')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffECF7FD),
      body: Stack(
        children: [
          _screens[_currentIndex],
          Positioned(
            top: 0,
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
                      padding: EdgeInsets.only(right: 5, left: 10),
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              controller: _searchController,
                              decoration: InputDecoration(
                                hintText: 'Search',
                                border: InputBorder.none,
                              ),
                            ),
                          ),
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
                      icon: Icon(Icons.notifications),
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
        ],
      ),
      bottomNavigationBar: Theme(
        data:
        Theme.of(context).copyWith(
          canvasColor: Colors.black,
        ),
        child: BottomNavigationBar(
          // backgroundColor: Colors.black,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          // fixedColor: Colors.black,
          selectedItemColor: Color(0xff6D99FF),
          unselectedItemColor: Color(0xff6D99FF).withOpacity(0.6),
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
                // color: Colors.pinkAccent,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.my_library_books_outlined,
                // color: Colors.pinkAccent,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add_box_outlined,
                // color: Colors.pinkAccent,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart_outlined,
                // color: Colors.pinkAccent,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_rounded,
                // color: Colors.pinkAccent,
              ),
              label: '',
            ),
          ],
        ),
      ),

    );
  }
}

void main() {
  runApp(MaterialApp(
    home: HomeScreen(),
  ));
}
