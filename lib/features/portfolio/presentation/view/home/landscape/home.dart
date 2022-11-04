import 'package:flutter/material.dart';
import 'package:portfolio/core/constants/language_constants.dart';
import 'package:portfolio/core/util/size_config.dart';
import 'package:portfolio/features/portfolio/presentation/widgets/change_language_button.dart';
import 'package:portfolio/features/portfolio/presentation/widgets/change_theme_button.dart';
import 'package:portfolio/features/portfolio/presentation/widgets/portfolio_items.dart';
import 'package:portfolio/features/presentation/view/about.dart';
import 'package:portfolio/features/portfolio/presentation/view/profile/profile.dart';

import '../../../widgets/dialogs/contact.dart';
import '../../../widgets/dialogs/skills.dart';
import '../../../widgets/profile_avatar.dart';

class HomeLandscape extends StatelessWidget {
  const HomeLandscape({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.fromWidth(context, 4),
          ),
          child: Row(children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const ProfileAvatar(),
                SizedBox(
                  height: SizeConfig.fromHeight(context, 5),
                ),
                Text(
                  'Teslim\nHassan',
                  textAlign: TextAlign.start,
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ],
            ),
            SizedBox(
              width: SizeConfig.fromHeight(context, 10),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Item(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Profile())),
                      text: translation(context).profile,
                      innerRadius: SizeConfig.fontSize(context, 14),
                      outerRadius: SizeConfig.fontSize(context, 16),
                    ),
                    SizedBox(
                      height: SizeConfig.fromHeight(context, 3),
                    ),
                    const Skills(),
                  ],
                ),
                SizedBox(
                  width: SizeConfig.fromHeight(context, 10),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Item(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const About())),
                      text: translation(context).aboutMe,
                      innerRadius: SizeConfig.fontSize(context, 20),
                      outerRadius: SizeConfig.fontSize(context, 22),
                    ),
                    SizedBox(
                      height: SizeConfig.fromHeight(context, 3),
                    ),
                    const Contact()
                  ],
                ),
                SizedBox(
                  width: SizeConfig.fromWidth(context, 4),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    changeTheme(),
                    SizedBox(
                      height: SizeConfig.fromWidth(context, 4),
                    ),
                    changeLanguage(context),
                  ],
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
