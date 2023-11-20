import 'package:flutter/material.dart';
import 'package:glover/constants/appColors.dart';

class CategoriesRow extends StatelessWidget {
  final List<String> imagePaths;
  final List<String> texts;

  CategoriesRow({Key? key, required this.imagePaths, required this.texts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          // categoriesContainer(text: texts[0], imagePath: imagePaths[0]),
          SizedBox(width: 0),
          ...imagePaths.asMap().entries.map((entry) {
            final index = entry.key;
            final imagePath = entry.value;
            final text = index < texts.length ? texts[index] : '';

            return Row(
              children: [
                SizedBox(width: index == 0 ? 0 : 15),
                categoriesContainer(text: text, imagePath: imagePath),
              ],
            );
          }).toList(),
        ],
      ),
    );
  }
}


class categoriesContainer extends StatelessWidget {
  final String text;
  final String imagePath;

  const categoriesContainer({super.key, required this.text, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 130,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
                left: 12,
                top: 6
            ),
            child: Text(
              text,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: 8,
                right: 8,
                top: 2
            ),
            child: Container(
              width: 200,
              height: 85,
              decoration: BoxDecoration(
                // color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                  image: DecorationImage(
                      image: AssetImage(imagePath,),
                      fit: BoxFit.fitWidth
                  )
              ),
            ),
          )
        ],
      ),
    );
  }
}

