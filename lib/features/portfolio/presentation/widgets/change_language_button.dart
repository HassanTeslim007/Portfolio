import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/colors.dart';
import 'package:portfolio/core/theme/custom_theme.dart';
import 'package:portfolio/core/helpers/dialog_helper.dart';

Widget changeLanguage(context) => Container(
    decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
            color: CustomTheme().currentTheme == ThemeMode.dark
                ? kWhite
                : kBlack)),
    child: IconButton(
        onPressed: () => DialogHelper.changeLanguage(context),
        icon: const Icon(Icons.language)));