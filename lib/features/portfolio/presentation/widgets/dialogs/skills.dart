import 'package:flutter/material.dart';
import 'package:portfolio/core/constants/language_constants.dart';
import 'package:portfolio/core/theme/colors.dart';
import 'package:portfolio/core/helpers/dialog_helper.dart';
import 'package:portfolio/core/util/size_config.dart';

import '../indicator.dart';
import '../portfolio_items.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return Item(
      onTap: () {
        DialogHelper.skill(context);
      },
      text: translation(context).skills,
      innerRadius: SizeConfig.fontSize(context, 20),
      outerRadius: SizeConfig.fontSize(context, 22),
    );
  }
}

class SkillDialog extends StatelessWidget {
  const SkillDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: _buildSkillChild(context),
    );
  }
}

_buildSkillChild(context) {
  return Container(
    decoration: BoxDecoration(
      color: kWhite,
      borderRadius: BorderRadius.circular(SizeConfig.fontSize(context, 10)),
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 25),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              translation(context).skills,
              style: Theme.of(context)
                  .textTheme
                  .displayMedium!
                  .copyWith(color: Colors.black),
            ),
            Text(
              translation(context).languagesAndFrameworks,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: Colors.black,
                  fontSize: SizeConfig.fontSize(context, 5)),
            ),
            indicator(context,
                language: 'Dart',
                percent: 0.7,
                text: '70%',
                color: Colors.blue),
            indicator(context,
                language: 'Flutter',
                percent: 0.75,
                text: '75%',
                color: Colors.blueAccent),
            indicator(context,
                language: 'HTML',
                percent: 0.95,
                text: '95%',
                color: Colors.orangeAccent),
            indicator(context,
                language: 'CSS',
                percent: 0.5,
                text: '50%',
                color: const Color.fromARGB(255, 3, 44, 78)),
            // const Text('JavaScript'),
            indicator(context,
                language: 'JavaScript',
                percent: 0.7,
                text: '60%',
                color: Colors.red),
            // const Text('Python'),
            indicator(context,
                language: 'Python',
                percent: 0.5,
                text: '50%',
                color: Colors.yellow),
            const SizedBox(
              height: 10,
            ),
            indicator(context,
                language: 'Java',
                percent: 0.4,
                text: '40%',
                color: Colors.orange),
            const SizedBox(
              height: 10,
            ),
            Text(
              translation(context).versionSourceControlTools,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: Colors.black,
                  fontSize: SizeConfig.fontSize(context, 5)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/icons/git.png',
                      width: 20,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text('Git'),
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/icons/github.png',
                      width: 20,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text('Github'),
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/icons/gitlab.png',
                      width: 20,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text('Gitlab'),
                  ],
                ),
              ],
            ),
            Text(
              'BaaS',
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: Colors.black,
                  fontSize: SizeConfig.fontSize(context, 5)),
            ),
            const Text('FireBase'),
            Text(
              translation(context).stateManagementTools,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: Colors.black,
                  fontSize: SizeConfig.fontSize(context, 5)),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Stacked'),
                Text('Vanilla'),
                Text('Provider'),
                Text('GetX'),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
