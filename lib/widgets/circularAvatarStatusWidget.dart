import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glover/constants/imagePATH.dart';
import 'package:glover/widgets/circleAvatar.dart';

class StatusBar extends StatelessWidget {
  const StatusBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatarRow(
            imagePaths: [
              imagePATH.statusAvatar1,
              imagePATH.statusAvatar2,
              imagePATH.statusAvatar3,
              imagePATH.statusAvatar4,
              imagePATH.statusAvatar3,
              imagePATH.statusAvatar2,
            ],
          ),
        ],
      ),
    );
  }
}
