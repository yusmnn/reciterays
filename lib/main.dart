import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'utils/theme/theme_app.dart';
import 'view/pages/about_page.dart';
import 'view/pages/doa_page.dart';
import 'view/pages/home_page.dart';
import 'view/pages/murottal_surah_page.dart';
import 'view/pages/onboarding_page.dart';
import 'view/pages/splash_screen_page.dart';
import 'view_models/about_page_view_model.dart';
import 'view_models/doa_view_model.dart';
import 'view_models/surah_view_models.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => DoaViewModel()),
        ChangeNotifierProvider(create: (_) => SurahViewModel()),
        ChangeNotifierProvider(create: (_) => AboutPageViewModel()),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: StyleTheme.themeData(),
          initialRoute: OnboardingPage.routeName,
          routes: {
            SplashScreen.routeName: (context) => SplashScreen(),
            OnboardingPage.routeName: (context) => const OnboardingPage(),
            HomePage.routeName: (context) => const HomePage(),
            DoaPage.routeName: (context) => const DoaPage(),
            AboutPage.routeName: (context) => const AboutPage(),
            MurottalSurahPage.routeName: (context) => const MurottalSurahPage(),
          }),
    );
  }
}
