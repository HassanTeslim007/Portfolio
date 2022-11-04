import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/colors.dart';
import 'package:portfolio/core/theme/custom_theme.dart';

Widget changeTheme() => Container(
    decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
            color: CustomTheme().currentTheme == ThemeMode.dark
                ? kWhite
                : kBlack)),
    child: IconButton(
        onPressed: () => currentTheme.toggleTheme(),
        icon: CustomTheme().currentTheme == ThemeMode.dark
            ? const Icon(
                Icons.light_mode_rounded,
              )
            : const Icon(
                Icons.dark_mode_rounded,
              )));