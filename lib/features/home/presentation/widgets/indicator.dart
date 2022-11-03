import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:portfolio/core/util/size_config.dart';

Widget indicator(context,
    {required String language,
    required double percent,
    required String text,
    required Color color}) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 5),
    child: Row(
      children: [
        Text(language),
        LinearPercentIndicator(
          width: SizeConfig.fromWidth(context, 50),
          animation: true,
          lineHeight: 20.0,
          animationDuration: 2000,
          percent: percent,
          center: Text(text),
          barRadius: const Radius.circular(20),
          progressColor: color,
        ),
      ],
    ),
  );
}
