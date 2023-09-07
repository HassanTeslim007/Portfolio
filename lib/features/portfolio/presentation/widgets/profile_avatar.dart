import 'package:flutter/material.dart';
import 'package:portfolio/core/util/size_config.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: SizeConfig.fontSize(context, 27),
      backgroundColor: Colors.blue,
      child: Container(
        width: SizeConfig.fromWidth(context, 47),
        height: SizeConfig.fromHeight(context, 50),
        decoration: BoxDecoration(
          color: Colors.blue[50],
          shape: BoxShape.circle,
          image: const DecorationImage(
              image: AssetImage(
                'assets/profile-image.jpg',
              ),
              fit: BoxFit.cover),
        ),
      ),
    );
  }
}
