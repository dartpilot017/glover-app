import 'package:flutter/material.dart';
import 'package:glover/constants/appColors.dart';

class CircleAvatarRow extends StatelessWidget {
  final List<String> imagePaths;

  CircleAvatarRow({Key? key, required this.imagePaths}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CirclerAvatar(
            imagePath: imagePaths[0],
            showAddIcon: true,
          ),
          SizedBox(width: 0),
          ...imagePaths
              .getRange(1, imagePaths.length)
              .map((imagePath) => Row(
            children: [
              SizedBox(width: 15),
              CirclerAvatar(
                imagePath: imagePath,
                showAddIcon: false,
              ),
            ],
          ))
              .toList(),
        ],
      ),
    );
  }
}

class CirclerAvatar extends StatelessWidget {
  final String imagePath;
  final bool showAddIcon;

  const CirclerAvatar({
    Key? key,
    required this.imagePath,
    required this.showAddIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: AppColors.circlerAvatarBackground,
      radius: 40.0,
      child: CircleAvatar(
        backgroundColor: Colors.white,
        radius: 38.0,
        child: CircleAvatar(
          backgroundImage: AssetImage(imagePath),
          radius: 36,
          child: showAddIcon
              ? Center(
            child: Icon(
              Icons.add,
              color: Colors.white,
              size: 28,
            ),
          )
              : null,
        ),
      ),
    );
  }
}