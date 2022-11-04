import 'package:flutter/material.dart';
import 'package:portfolio/core/constants/language_constants.dart';
import 'package:portfolio/core/theme/colors.dart';
import 'package:portfolio/core/util/dialog_helper.dart';
import 'package:portfolio/core/util/size_config.dart';
import 'package:portfolio/features/home/presentation/widgets/portfolio_items.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Item(
      onTap: () {
        DialogHelper.contact(context);
      },
      text: translation(context).contact,
      innerRadius: SizeConfig.fontSize(context, 14),
      outerRadius: SizeConfig.fontSize(context, 16),
    );
  }
}

class ContactDialog extends StatelessWidget {
  const ContactDialog({super.key});

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
              translation(context).reachMeAnyWhere,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: Colors.black,
                  fontSize: SizeConfig.fontSize(context, 5)),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/icons/phone-call.png',
                      width: 20,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text('+234706 616 6577'),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/icons/gmail.png',
                  width: 20,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text('hassanteslim12@gmail.com'),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/icons/twitter.png',
                  width: 20,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text('@HassanTeslim3'),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/icons/linkedin.png',
                  width: 20,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text('Hassan Teslim Babatunde'),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/icons/stack-overflow.png',
                  width: 20,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text('Hassan Teslim'),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/icons/quora.png',
                  width: 20,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text('Hassan Teslim'),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
