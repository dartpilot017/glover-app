import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glover/constants/appColors.dart';
import 'package:glover/constants/imagePATH.dart';
import 'package:glover/screens/mainScren.dart';
import 'package:glover/widgets/my_flutter_icon_icons.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int _currentIndex = 0;
  int _totalScreens = 4;

  List _backgroundImages = [
    imagePATH.onBoardingImage1,
    imagePATH.onBoardingImage2,
    imagePATH.onBoardingImage3,
    imagePATH.onBoardingImage4,
  ];

  List <Widget> _backgroundText = [
    Column(
      children: [
        Column(
          children: [
            Text(
              "Welcome to",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                fontWeight: FontWeight.w600,
                letterSpacing: 1.7,
                wordSpacing: 1.8
              ),
            ),
            SizedBox(height: 15,),
            Text(
              "Glover",
              style: TextStyle(
                  color: AppColors.onBoardingText,
                  fontSize: 30,
                fontWeight: FontWeight.bold
              ),
            )
          ],
        ),
        SizedBox(height: 170,),
        Column(
          children: [
            Text(
              "Bringing Services to your",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.3,
                  wordSpacing: 1.8
              ),
            ),
            // SizedBox(height: 15,),
            Text(
              "door step",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.3,
                  wordSpacing: 1.8
              ),
            )
          ],
        ),
      ],
    ),
    Column(
      children: [
        Column(
          children: [
            Text(
              " ",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.7,
                  wordSpacing: 1.8
              ),
            ),
            SizedBox(height: 15,),
            Text(
              " ",
              style: TextStyle(
                  color: AppColors.onBoardingText,
                  fontSize: 30,
                  fontWeight: FontWeight.bold
              ),
            )
          ],
        ),
        SizedBox(height: 170,),
        Column(
          children: [
            Text(
              "we got you covered from",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.3,
                  wordSpacing: 1.8
              ),
            ),
            // SizedBox(height: 15,),
            Text(
              "searching to posting of houses",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.3,
                  wordSpacing: 1.8
              ),
            )
          ],
        ),
      ],
    ),
    Column(
      children: [
        Column(
          children: [
            Text(
              " ",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.7,
                  wordSpacing: 1.8
              ),
            ),
            SizedBox(height: 15,),
            Text(
              " ",
              style: TextStyle(
                  color: AppColors.onBoardingText,
                  fontSize: 30,
                  fontWeight: FontWeight.bold
              ),
            )
          ],
        ),
        SizedBox(height: 170,),
        Column(
          children: [
            Text(
              "to buying & selling varities",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.3,
                  wordSpacing: 1.8
              ),
            ),
            // SizedBox(height: 15,),
            Text(
              "of products",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.3,
                  wordSpacing: 1.8
              ),
            )
          ],
        ),
      ],
    ),
    Column(
      children: [
        Column(
          children: [
            Text(
              " ",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.7,
                  wordSpacing: 1.8
              ),
            ),
            SizedBox(height: 15,),
            Text(
              " ",
              style: TextStyle(
                  color: AppColors.onBoardingText,
                  fontSize: 30,
                  fontWeight: FontWeight.bold
              ),
            )
          ],
        ),
        SizedBox(height: 120,),
        Column(
          children: [
            Text(
              "Aimed at giving you premium",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.3,
                  wordSpacing: 1.8
              ),
            ),
            // SizedBox(height: 15,),
            Text(
              "services from all over",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.3,
                  wordSpacing: 1.8
              ),
            )
          ],
        ),
      ],
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // TODO: Implement background image
          // You can use the Image widget or any other method to display the background image

          Image.asset(
            _backgroundImages[_currentIndex],
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),

          /// Background Text position
          Positioned(
            top: 370,
            left: 0,
            right: 0,
            bottom: 0,
            child: PageView.builder(
              itemCount: _totalScreens,
              onPageChanged: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              itemBuilder: (context, index) {
                // TODO: Implement each individual onboarding screen
                // You can create a separate widget for each screen and return it here
                // TODO: Uncoment the return to call the build state of the text(s) widgets.........
                return _buildOnboardingScreen(index);
              },
            ),
          ),

          // TODO: Position the skip button
          Positioned(
            top: 50.0,
            left: 20.0,
            child: Visibility(
              visible: _currentIndex != _totalScreens - 1,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _currentIndex = _totalScreens - 1; // Skip to the last screen
                  });
                },
                child: Container(
                  width: 60,
                  height: 30,
                  decoration: BoxDecoration(
                    color: AppColors.onBoardingSkip,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Center(child: Text('Skip'))),
              ),
            ),
          ),

          // TODO: Position the dotsIndicator
          Positioned(
            bottom: _currentIndex == _totalScreens - 1 ? 108.0 : 44.0,
            left: 20.0,
            right: 20.0,
            child: _buildDotIndicators(),
          ),

          // TODO: Position the next screen button
          Positioned(
            bottom: 37.0,
            right: 29.0,
            child: Visibility(
              visible: _currentIndex != _totalScreens - 1,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _currentIndex++; // Move to the next screen
                  });
                },
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    color: AppColors.onBoardingButton,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),  // Shadow color
                        spreadRadius: 2,                      // Spread radius
                        blurRadius: 4,                        // Blur radius
                        offset: Offset(0, 2),                  // Offset in x and y direction
                      ),
                    ]
                  ),
                  child: Center(
                    child: Icon(
                      MyFlutterIcon.next,
                      size: 18,
                      color: AppColors.onBoardingPlay,
                    ),
                  ),
                )
              ),
            ),
          ),

          // TODO: Position the previous screen button
          Positioned(
            bottom: 37.0,
            left: 29.0,
            child: Visibility(
              visible: _currentIndex > 0 && _currentIndex < _totalScreens - 1,
              child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _currentIndex--; // Move to the next screen
                    });
                  },
                  child: Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                        color: AppColors.onBoardingButton,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),  // Shadow color
                            spreadRadius: 2,                      // Spread radius
                            blurRadius: 4,                        // Blur radius
                            offset: Offset(0, 2),                  // Offset in x and y direction
                          ),
                        ]
                    ),
                    child: Center(
                      child: Icon(
                        MyFlutterIcon.previous,
                        size: 18,
                        color: AppColors.onBoardingPlay,
                      ),
                    ),
                  )
              ),
            ),
          ),

          // TODO: Position the replay button
          Positioned(
            top: 26.0,
            left: 23.0,
            child: Visibility(
              visible: _currentIndex == _totalScreens - 1,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _currentIndex = 0; // Replay the onboarding from the first screen
                  });
                },
                child: Container(
                  width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      color: AppColors.onBoardingSkip.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: Icon(Icons.replay, size: 26, color: Colors.black,)),
              ),
            ),
          ),

          // TODO: Position the "Get Started" button
          Positioned(
            bottom: 38.0,
            left: 30.0,
            right: 30.0,
            child: Visibility(
              visible: _currentIndex == _totalScreens - 1,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => mainScreen()
                      )
                  );
                },
                child: Container(
                  width: 330,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xff6D99FF).withOpacity(1),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(
                    child: Text(
                        "Get Started",
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffffffff)
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildDotIndicators() {
    return DotsIndicator(
      dotsCount: _totalScreens,
      position: _currentIndex,
      decorator: DotsDecorator(
        size:  Size.square(8.0),
        activeSize:  Size(28.0, 10.0),
        activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),

        activeColor: AppColors.onBoardingButton,
        color: AppColors.onBoardingPlay
      ),
    );
  }

  // TODO: Design each screen widgets with texts and others.....
  Widget _buildOnboardingScreen(int index) {
    // Customize each screen widget with content, text, and any other UI elements
    return Container(
      // Add your custom content for each screen here
      child: Center(
        child: _backgroundText[_currentIndex]
      ),
    );
  }


}

