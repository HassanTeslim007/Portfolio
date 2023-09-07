import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/colors.dart';
import 'package:portfolio/core/theme/custom_theme.dart';
import 'package:webview_flutter/webview_flutter.dart';

class GithubWebview extends StatelessWidget {
  final WebViewController controller;
  const GithubWebview({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Github Profile',
              style: TextStyle(
                color: CustomTheme().currentTheme == ThemeMode.dark
                    ? kWhite
                    : kBlack,
              ))),
      body: WebViewWidget(controller: controller),
    );
  }
}
