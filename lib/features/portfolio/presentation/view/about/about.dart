import 'package:flutter/material.dart';
import 'package:portfolio/core/constants/language_constants.dart';
import 'package:portfolio/core/util/size_config.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.fromWidth(context, 6),
            vertical: SizeConfig.fromHeight(context, 4),
          ),
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () => Navigator.pop(context),
                      child: const Icon(Icons.arrow_back_ios_new_outlined)),
                  Text(
                    translation(context).aboutMeHeading,
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                  const SizedBox()
                ],
              ),
              SizedBox(
                height: SizeConfig.fromHeight(context, 2),
              ),
              Text(
                translation(context).aboutMeContent,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontSize: SizeConfig.fontSize(context, 4),
                      wordSpacing: 2.0,
                      height: 2,
                    ),
              ),
              SizedBox(
                height: SizeConfig.fromHeight(context, 3),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
