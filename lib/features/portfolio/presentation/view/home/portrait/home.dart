import 'package:flutter/material.dart';
import 'package:portfolio/core/constants/language_constants.dart';
import 'package:portfolio/core/theme/colors.dart';
import 'package:portfolio/core/theme/custom_theme.dart';
import 'package:portfolio/core/util/size_config.dart';
import 'package:portfolio/features/portfolio/presentation/widgets/change_language_button.dart';
import 'package:portfolio/features/portfolio/presentation/widgets/change_theme_button.dart';
import 'package:portfolio/features/portfolio/presentation/widgets/dialogs/skills.dart';
import 'package:portfolio/features/portfolio/presentation/widgets/github_webview.dart';
import 'package:portfolio/features/portfolio/presentation/widgets/portfolio_items.dart';
import 'package:portfolio/features/portfolio/presentation/view/profile/profile.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../widgets/dialogs/contact.dart';
import '../../../widgets/profile_avatar.dart';
import '../../about/about.dart';

class HomePortrait extends StatelessWidget {
  const HomePortrait({super.key});

  @override
  Widget build(BuildContext context) {
    late WebViewController controller;
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.fromWidth(context, 6),
            vertical: SizeConfig.fromHeight(context, 2)),
        child: SingleChildScrollView(
          child: Column(children: [
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
            MaterialButton(
              onPressed: () {
                controller = WebViewController()
                  ..setJavaScriptMode(JavaScriptMode.unrestricted)
                  ..setBackgroundColor(const Color(0x00000000))
                  ..setNavigationDelegate(
                    NavigationDelegate(
                      onProgress: (int progress) {
                        // Update loading bar.
                      },
                      onPageStarted: (String url) {},
                      onPageFinished: (String url) {},
                      onWebResourceError: (WebResourceError error) {},
                    ),
                  )
                  ..loadRequest(
                      Uri.parse('https://www.github.com/hassanteslim007'));

                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            GithubWebview(controller: controller)));
              },
              color: Colors.blue[400],
              child: Text('Open Github',
                  style: TextStyle(
                    color: CustomTheme().currentTheme == ThemeMode.dark
                        ? kWhite
                        : kBlack,
                  )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Item(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Profile())),
                  text: translation(context).profile,
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
                  text: translation(context).aboutMe,
                  innerRadius: SizeConfig.fontSize(context, 20),
                  outerRadius: SizeConfig.fontSize(context, 22),
                ),
                const Contact()
              ],
            ),
            SizedBox(
              height: SizeConfig.fromWidth(context, 4),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                changeTheme(),
                SizedBox(
                  width: SizeConfig.fromWidth(context, 4),
                ),
                changeLanguage(context),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
