import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

class GithubButton extends StatelessWidget {
  const GithubButton({
    super.key,
    required this.url,
  });

  final String url;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => launchUrl(
        Uri.parse(url),
        mode: LaunchMode.inAppWebView,
        webViewConfiguration: const WebViewConfiguration(
          headers: <String, String>{'my_header_key': 'my_header_value'},
        ),
      ),
      heroTag: 'github',
      backgroundColor: Colors.purple,
      child: SvgPicture.asset(
        'assets/icons/github_icon.svg',
        semanticsLabel: 'github',
        width: 22,
        height: 22,
        color: Colors.white,
      ),
    );
  }
}
