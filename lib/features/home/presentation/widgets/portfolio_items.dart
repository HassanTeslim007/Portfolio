import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/colors.dart';
import 'package:portfolio/core/theme/custom_theme.dart';

class Item extends StatelessWidget {
  final Function()? onTap;
  final String text;
  final double innerRadius;
  final double outerRadius;
  const Item(
      {super.key,
      required this.text,
      required this.innerRadius,
      required this.outerRadius,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: CircleAvatar(
        radius: outerRadius,
        backgroundColor: Colors.blue[400],
        child: CircleAvatar(
          radius: innerRadius,
          backgroundColor:
              CustomTheme().currentTheme == ThemeMode.dark ? kBlack : kWhite,
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
      ),
    );
  }
}
