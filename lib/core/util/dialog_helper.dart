import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
import 'package:portfolio/features/home/presentation/widgets/dialogs/contact.dart';
import 'package:portfolio/features/home/presentation/widgets/dialogs/skills.dart';

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
}
