import 'package:flutter/cupertino.dart';
import 'package:glover/constants/imagePATH.dart';
import 'package:glover/widgets/cardImage_Widget.dart';
import 'package:glover/widgets/categoriesWidget.dart';
import 'package:glover/widgets/circularAvatarStatusWidget.dart';
import 'package:glover/widgets/popularCategoriesAndIcon.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 100,
            right: 0,
            left: 0,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.only(left: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: <Widget>[
                    StatusBar(),
                    SizedBox(height: 35,),
                    CategoryAndIcon(),
                    SizedBox(height: 10,),
                    CategoriesRow(
                        imagePaths: [
                          imagePATH.categoriesImage1,
                          imagePATH.categoriesImage3,
                          imagePATH.categoriesImage2,
                        ],
                        texts: [
                          'Furnitures',
                          'Computer',
                          'Services',
                        ]),
                    SizedBox(height: 15,),
                    CategoryAndIcon(),
                    SizedBox(height: 10,),
                    CategoriesRow(
                        imagePaths: [
                          imagePATH.brandImage1,
                          imagePATH.brandImage2,
                          imagePATH.brandImage3
                        ],
                        texts: [
                          'Nike',
                          'Lexus',
                          'Gucci'
                        ]),
                    SizedBox(height: 15,),
                    CardImageIcon(
                      name: 'Oluwole Precious',
                      atUser: '@preshy',
                      description: 'Quality set of modern sofa',
                      imagePath: imagePATH.cardImage1,
                      avatarImage: imagePATH.cardUserAvatar1,
                      priceTag: '480,000',
                      height: 440,
                      showIconContainer: false,
                    ),
                    SizedBox(height: 15,),
                    CardImageIcon(
                        name: 'Saheed Okiki',
                        atUser: '@Lala',
                        description: 'Furnished 5bdrm Mansion in No, Lekki Phase 2 for Sale',
                        imagePath: imagePATH.cardImage2,
                        avatarImage: imagePATH.cardUserAvatar2,
                        priceTag: '40,480,000',
                      // showIconContainer: true,
                      // height: 550,

                    ),
                    SizedBox(height: 15,),
                    CardImageIcon(
                        name: 'Robert James',
                        atUser: '@Jay-z',
                        description: 'Furnished 8 bedroom Mansion in No, Banana island for Sale or Rent',
                        imagePath: imagePATH.cardImage3,
                        avatarImage: imagePATH.cardUserAvatar3,
                        priceTag: '90,980,000',
                    ),
                    SizedBox(height: 65,)
                  ],

                ),

              ),
            )
        )
      ],
    );
  }
}
