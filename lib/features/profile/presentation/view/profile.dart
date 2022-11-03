import 'package:flutter/material.dart';
import 'package:portfolio/core/util/size_config.dart';
import 'package:scroll_loop_auto_scroll/scroll_loop_auto_scroll.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              Icons.arrow_back_ios_new_outlined,
            )),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.fromWidth(context, 6),
            vertical: SizeConfig.fromHeight(context, 3),
          ),
          child: ScrollLoopAutoScroll(
            scrollDirection: Axis.vertical,
            duration: const Duration(seconds: 800),
            gap: 25,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Center(
                child: Text(
                  'My Profile',
                  style: Theme.of(context).textTheme.headline2,
                ),
              ),
              SizedBox(
                height: SizeConfig.fromHeight(context, 2),
              ),
              profileBullet(context, text: 'Name: Hassan Teslim B.'),
              profileBullet(context, text: 'NickName: Alpha'),
              profileBullet(context, text: 'Age: 22'),
              profileBullet(context, text: 'Nationality: Nigerian'),
              profileBullet(context,
                  text:
                      'Favourite Quotes -\nSimplicity is the Ultimate Sophistication\nWhat is Worth doing, is worth doing well'),
              SizedBox(
                height: SizeConfig.fromHeight(context, 2),
              ),
              Text(
                'Experience',
                style: Theme.of(context).textTheme.headline2,
              ),
              profileBullet(context,
                  text: 'Nupat Technologies -\nFlutter Developer'),
              profileBullet(context,
                  text: 'Nebula Studios -\nFlutter Developer'),
              profileBullet(context,
                  text: 'Depths HQ -\nFLutter Developer Intern'),
              profileBullet(context,
                  text: 'HNG internships 8 -\nFlutter Developer - Prefinalist'),
              SizedBox(
                height: SizeConfig.fromHeight(context, 2),
              ),
              Text(
                'Projects',
                style: Theme.of(context).textTheme.headline2,
              ),
              profileBullet(context,
                  text:
                      'Enyo Retail: Our Space\n(Available on Playstore and App Store)'),
              profileBullet(context,
                  text: 'Zuri Chat\n(Available on Playstore)'),
              SizedBox(
                height: SizeConfig.fromHeight(context, 2),
              ),
              Text(
                'Education',
                style: Theme.of(context).textTheme.headline2,
              ),
              profileBullet(context,
                  text: 'Federal University of Agriculture\nAbeokuta'),
              profileBullet(context,
                  text: 'DS Adegbenro ICT Polytechnic\nOgun State'),
              profileBullet(context,
                  text: 'Bizlife Institute of Information\nand Technology'),
              profileBullet(context,
                  text: 'The Crescent International\nHigh School'),
              SizedBox(
                height: SizeConfig.fromHeight(context, 2),
              ),
              Text(
                'Certificates/Awards',
                style: Theme.of(context).textTheme.headline2,
              ),
              profileBullet(context, text: 'Diploma in Web Design - BIIT'),
              profileBullet(context,
                  text:
                      'Google Africa Developers Scholarship\nCertificate of Partici[ation'),
              profileBullet(context,
                  text: 'Jobberman Accelerated\nSoft Skill Certificate'),
              profileBullet(context,
                  text:
                      'Best Graduating Student Award\nDepartment of Computer Science - DSAP'),
              profileBullet(context,
                  text:
                      'Mathematics Brain Challenge Winner\nSchool of Engineerng and Sciences - DSAP'),
              SizedBox(
                height: SizeConfig.fromHeight(context, 2),
              ),
              Text(
                'Intrests/Hobbies',
                style: Theme.of(context).textTheme.headline2,
              ),
              profileBullet(context, text: 'Mobile/Software Development'),
              profileBullet(context, text: 'Millitary'),
              profileBullet(context, text: 'Startegy Games'),
              profileBullet(context, text: 'Volleyball'),
              profileBullet(context, text: 'Reading'),
            ]),
          ),
        ),
      ),
    );
  }
}

Widget profileBullet(context, {required String text}) {
  return Row(
    children: [
      Text(
        "\u2022",
        style: Theme.of(context).textTheme.bodySmall,
      ),
      SizedBox(
        width: SizeConfig.fromWidth(context, 4),
      ),
      Text(
        text,
        style: Theme.of(context)
            .textTheme
            .bodySmall!
            .copyWith(fontSize: 16, overflow: TextOverflow.fade),
      )
    ],
  );
}
