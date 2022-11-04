import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
import 'package:portfolio/features/portfolio/presentation/widgets/dialogs/change_language.dart';
import 'package:portfolio/features/portfolio/presentation/widgets/dialogs/contact.dart';
import 'package:portfolio/features/portfolio/presentation/widgets/dialogs/skills.dart';

class DialogHelper {
  static skill(context) => showAnimatedDialog(
        barrierDismissible: true,
        context: context,
        builder: (context) => const SkillDialog(),
        animationType: DialogTransitionType.slideFromTop,
        curve: Curves.fastLinearToSlowEaseIn,
        duration: const Duration(milliseconds: 1500),
      );

  static contact(context) => showAnimatedDialog(
        barrierDismissible: true,
        context: context,
        builder: (context) => const ContactDialog(),
        animationType: DialogTransitionType.fadeScale,
        curve: Curves.fastLinearToSlowEaseIn,
        duration: const Duration(milliseconds: 1500),
      );

  static changeLanguage(context) => showAnimatedDialog(
        barrierDismissible: true,
        context: context,
        builder: (context) => const ChangeLanguageDialog(),
        animationType: DialogTransitionType.slideFromBottomFade,
        curve: Curves.fastLinearToSlowEaseIn,
        duration: const Duration(milliseconds: 1500),
      );
}
