import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class AboutPageViewModel extends ChangeNotifier {
  Future<void> getReport(String email) async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: email,
      queryParameters: {
        'subject': 'Report Aplikasi ReciteRays',
      },
    );
    final String url = emailLaunchUri.toString();
    if (await canLaunchUrlString(url)) {
      await launchUrlString(
        url,
        mode: LaunchMode.externalApplication,
      );
    } else {
      throw 'Could not launch $url';
    }
    notifyListeners();
  }
}
