import 'package:flutter/material.dart';
import 'package:portfolio/core/constants/language_constants.dart';
import 'package:portfolio/core/theme/colors.dart';
import 'package:portfolio/core/util/size_config.dart';
import 'package:portfolio/main.dart';

class ChangeLanguageDialog extends StatelessWidget {
  const ChangeLanguageDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: _buildSkillChild(context),
    );
  }
}

_buildSkillChild(context) {
  return IntrinsicHeight(
    child: Container(
      decoration: BoxDecoration(
        color: kWhite,
        borderRadius: BorderRadius.circular(SizeConfig.fontSize(context, 10)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              translation(context).changeLanguage,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: Colors.black,
                  fontSize: SizeConfig.fontSize(context, 5)),
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: List.generate(
                  languageList().length,
                  (e) => InkWell(
                        onTap: () async {
                          Locale locale =
                              await setLocale(languageList()[e].languageCode);
                          debugPrint(languageList()[e].name);
                          MyApp.setLocale(context, locale);
                        },
                        child: Row(
                          children: [
                            Text(
                              languageList()[e].flag,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                      color: Colors.black,
                                      fontSize:
                                          SizeConfig.fontSize(context, 8)),
                            ),
                            SizedBox(
                              width: SizeConfig.fromWidth(context, 3),
                            ),
                            Text(
                              languageList()[e].name,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                      color: Colors.black,
                                      fontSize:
                                          SizeConfig.fontSize(context, 5)),
                            )
                          ],
                        ),
                      )),
              //   children: [
              //     Image.asset(
              //       'assets/icons/phone-call.png',
              //       width: 20,
              //     ),
              //     const SizedBox(
              //       width: 10,
              //     ),
              //     const Text('+234706 616 6577'),
              //   ],
              // ),
              // const SizedBox(
              //   height: 10,
              // ),
              // Row(
              //   children: [
              //     Image.asset(
              //       'assets/icons/gmail.png',
              //       width: 20,
              //     ),
              //     const SizedBox(
              //       width: 10,
              //     ),
              //     const Text('hassanteslim12@gmail.com'),
              //   ],
              // ),
              // const SizedBox(
              //   height: 10,
              // ),
              // Row(
              //   children: [
              //     Image.asset(
              //       'assets/icons/twitter.png',
              //       width: 20,
              //     ),
              //     const SizedBox(
              //       width: 10,
              //     ),
              //     const Text('@HassanTeslim3'),
              //   ],
              // ),
              // const SizedBox(
              //   height: 10,
            )
          ],
        ),
      ),
    ),
  );
}
