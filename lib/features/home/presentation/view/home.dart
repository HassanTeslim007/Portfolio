import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/colors.dart';
import 'package:portfolio/core/theme/custom_theme.dart';
import 'package:portfolio/core/util/size_config.dart';
import 'package:portfolio/features/about/presentation/view/about.dart';
import 'package:portfolio/features/home/presentation/widgets/dialogs/contact.dart';
import 'package:portfolio/features/home/presentation/widgets/portfolio_items.dart';
import 'package:portfolio/features/home/presentation/widgets/profile_avatar.dart';
import 'package:portfolio/features/home/presentation/widgets/dialogs/skills.dart';
import 'package:portfolio/features/profile/presentation/view/profile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(builder: (context, orientation) {
        return orientation == Orientation.portrait
            ? const HomePortrait()
            : const HomeLandscape();
      }),
    );
  }
}

class HomePortrait extends StatefulWidget {
  const HomePortrait({super.key});

  @override
  State<HomePortrait> createState() => _HomePortraitState();
}

class _HomePortraitState extends State<HomePortrait> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: SizeConfig.fromWidth(context, 6)),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const ProfileAvatar(),
        SizedBox(
          height: SizeConfig.fromHeight(context, 2),
        ),
        Text(
          'Teslim Hassan',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.displayMedium,
        ),
        SizedBox(
          height: SizeConfig.fromHeight(context, 2),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Item(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Profile())),
              text: 'Profile',
              innerRadius: SizeConfig.fontSize(context, 14),
              outerRadius: SizeConfig.fontSize(context, 16),
            ),
            const Skills()
          ],
        ),
        SizedBox(
          height: SizeConfig.fromHeight(context, 3),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Item(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const About())),
              text: 'About Me',
              innerRadius: SizeConfig.fontSize(context, 20),
              outerRadius: SizeConfig.fontSize(context, 22),
            ),
            const Contact()
          ],
        ),
        changeTheme(),
      ]),
    );
  }
}

class HomeLandscape extends StatelessWidget {
  const HomeLandscape({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
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
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Profile())),
                  text: 'Profile',
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
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const About())),
                  text: 'About Me',
                  innerRadius: SizeConfig.fontSize(context, 20),
                  outerRadius: SizeConfig.fontSize(context, 22),
                ),
                SizedBox(
                  height: SizeConfig.fromHeight(context, 3),
                ),
                const Contact()
              ],
            ),
            changeTheme()
          ],
        ),
      ]),
    );
  }
}

Widget changeTheme() => Container(
    decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
            color: CustomTheme().currentTheme == ThemeMode.dark
                ? kWhite
                : kBlack)),
    child: IconButton(
        onPressed: () => currentTheme.toggleTheme(),
        icon: CustomTheme().currentTheme == ThemeMode.dark
            ? const Icon(
                Icons.light_mode_rounded,
              )
            : const Icon(
                Icons.dark_mode_rounded,
              )));
