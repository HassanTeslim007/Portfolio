import 'package:flutter/material.dart';
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
                    'ABOUT ME',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  const SizedBox()
                ],
              ),
              SizedBox(
                height: SizeConfig.fromHeight(context, 2),
              ),
              Text(
                '''My Name is Hassan Teslim B. For the most part in the Tech Space, I'll call myself ALPHA. I'm a FLutter developer with over a year experience working on real life applications. If there's one thing I don't get tired of, It' writing codes.
I'm -currently- a final year computer science student in the Federal University of Agricuilture, Abeokuta.
I love to read fiction, favourite genre are sci-fi,ancient mystery,religion,crime fiction, documentaries,history etc.
I'm also a 6'2 volleyball player with two Silver and one Bronze Medal.
I also have intrests in the millitary and everything in that block''',
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
