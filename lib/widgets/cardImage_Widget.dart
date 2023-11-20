import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:glover/constants/appColors.dart';
import 'package:glover/constants/imagePATH.dart';
import 'package:glover/widgets/my_flutter_icon_icons.dart';

class CardImageIcon extends StatelessWidget {
  final String name;
  final String atUser;
  final String description;
  final String imagePath;
  final String avatarImage;
  final String priceTag;
  final bool showIconContainer;
  // Whether to display the IconContainer
  final double height;
  final double height1;// The dynamic height of the container

  const CardImageIcon({
    Key? key,
    required this.name,
    required this.atUser,
    required this.description,
    required this.imagePath,
    required this.avatarImage,
    required this.priceTag,
    this.showIconContainer = true,
    // this.showIcon = true,
    this.height = 550,
    this.height1 = 15,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
      ),
      padding: EdgeInsets.only(
        right: 10,
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          color: Colors.white,
        ),
        padding: EdgeInsets.only(
          top: 10,
          left: 8,
          right: 8,
          bottom: height1,
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                left: 7,
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: AppColors.onBoardingButton,
                    radius: 25,
                    child: CircleAvatar(
                      backgroundColor: AppColors.onBoardingPlay,
                      radius: 24,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(avatarImage),
                        radius: 23,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        atUser,
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff6c7a9c).withOpacity(0.5),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Colors.white,
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    right: 0,
                    bottom: 0,
                    left: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        image: DecorationImage(
                          image: AssetImage(imagePath),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 210,
                    bottom: 0,
                    right: 0,
                    left: 0,
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(22),
                          bottomLeft: Radius.circular(22),
                        ),
                        color: Colors.black.withOpacity(0.3),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                          right: 10,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      GestureDetector(
                                        onTap: () {},
                                        child: Icon(
                                          Icons.favorite_border,
                                          color: Colors.white,
                                          size: 28,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 6,
                                      ),
                                      Text(
                                        '2.5k',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(width: 20,),
                                  Row(
                                    children: [
                                      GestureDetector(
                                        onTap: () {},
                                        child: Icon(
                                          MyFlutterIcon.comment_outlined,
                                          color: Colors.white,
                                          size: 28,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 6,
                                      ),
                                      Text(
                                        '236',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Container(
                                width: 78,
                                // color: Colors.black,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    GestureDetector(
                                      onTap: () {},
                                      child: Icon(
                                        Icons.share_outlined,
                                        color: Colors.white,
                                        size: 28,
                                      ),
                                    ),
                                    // SizedBox(height: 25,),
                                    GestureDetector(
                                      onTap: () {},
                                      child: Icon(
                                        MyFlutterIcon.save,
                                        color: Colors.white,
                                        size: 28,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 15),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: 250,
                    height: 80,
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          child: Wrap(
                            children: [
                              Text(
                                description,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Brand ||",
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                  Text(
                                    'Generic',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff586992),
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                '₦'+priceTag,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff5398b2),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 250,
                    child: Column(
                      children: [
                        // if (showIconContainer)
                          Container(
                            width: 80,
                            height: 35,
                            color: AppColors.mainScreenBackground,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 8
                              ),
                              child: Row(
                                children: [
                                  if(showIconContainer)
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        GestureDetector(
                                          onTap: () {},
                                          child: Icon(
                                            MyFlutterIcon.chat_outlined,
                                          ),
                                        ),
                                        SizedBox(width: 8,),
                                        Text(
                                          "Chat",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        )
                                      ],
                                    ),
                                  if(!showIconContainer)
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        GestureDetector(
                                          onTap: () {},
                                          child: Icon(
                                            MyFlutterIcon.shopping_bag,
                                          ),
                                        ),
                                        SizedBox(width: 10,),
                                        Text(
                                          "Buy",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        )
                                      ],
                                    ),
                                ],
                              ),
                            ),
                          ),
                        SizedBox(height: 10),
                        // if (showIconContainer)
                          Container(
                            width: 80,
                            height: 35,
                            color: AppColors.mainScreenBackground,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 8
                              ),
                              child: Row(
                                children: [
                                  if(showIconContainer)
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        GestureDetector(
                                          onTap: () {},
                                          child: Icon(
                                            Icons.phone_in_talk,
                                          ),
                                        ),
                                        SizedBox(width: 8,),
                                        Text(
                                          "Call",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        )
                                      ],
                                    ),
                                  if(!showIconContainer)
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        GestureDetector(
                                          onTap: () {},
                                          child: Icon(
                                            MyFlutterIcon.cart_outlined,
                                          ),
                                        ),
                                        SizedBox(width: 10,),
                                        Text(
                                          "Cart",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        )
                                      ],
                                    ),
                                ],
                              ),
                            ),
                          ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            // SizedBox(height: 15),
            if (showIconContainer) IconContainer(),
          ],
        ),
      ),
    );
  }
}

class IconContainer extends StatelessWidget {

  final bool showIcon;
  const IconContainer({Key? key, this.showIcon = true});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      // width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.mainScreenBackground,
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            spreadRadius: -1.8,
            blurRadius: 6,
            offset: Offset(0, 3),
            
          ),
          BoxShadow(
            color: Colors.white,
            spreadRadius: -1,
            blurRadius: 2,
            offset: Offset(3, 0),

          ),
          // BoxShadow(
          //   color: Colors.pink,
          //   spreadRadius: -1.6,
          //   blurRadius: 2,
          //   offset: Offset(-3, 0),
          //
          // ),
          // BoxShadow(
          //   color: Colors.yellow,
          //   spreadRadius: 0.8,
          //   blurRadius: 8,
          //   offset: Offset(0, -3),
          //
          // )
        ]
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 10,
          right: 10,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 45,
                  height: 30,
                  // color: Colors.black,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        MyFlutterIcon.beds,
                        // color: Colors.white,
                        size: 18,
                      ),
                      Text(
                        '5',
                        style: TextStyle(
                          fontSize: 18,
                          // color: Colors.white
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 45,
                  height: 30,
                  // color: Colors.black,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        MyFlutterIcon.toilet,
                        // color: Colors.white,
                        size: 22,
                      ),
                      Text(
                        '6',
                        style: TextStyle(
                          fontSize: 18,
                          // color: Colors.white
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 45,
                  height: 30,
                  // color: Colors.black,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        MyFlutterIcon.bath_tub,
                        // color: Colors.white,
                        size: 18,
                      ),
                      Text(
                        '5',
                        style: TextStyle(
                          fontSize: 20,
                          // color: Colors.white
                        ),
                      )
                    ],
                  ),
                ),
                Icon(
                  Icons.add_circle_outline,
                  // color: Colors.white,
                  size: 25,
                ),
                Container(
                  width: 95,
                  height: 30,
                  // color: Colors.black,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        MyFlutterIcon.tab,
                        // color: Colors.white,
                        size: 15,
                      ),
                      Text(
                        '900 sqft',
                        style: TextStyle(
                          fontSize: 18,
                          // color: Colors.white
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            // SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}
