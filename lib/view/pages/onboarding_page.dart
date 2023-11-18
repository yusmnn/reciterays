import 'package:flutter/material.dart';
import 'package:pembukuan_apk/utils/constant/const_color.dart';
import 'package:pembukuan_apk/view/pages/home_page.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  static const String routeName = '/onboardingPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: qGreen2,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.all(24),
              width: 341,
              height: 391,
              decoration: BoxDecoration(
                color: qGreen3,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Image.asset(
                  'assets/images/quran_image.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      'ReciteRays',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: qGreen,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Murottal dan doa harian, jadikan sebagai rutinitas harianmu.',
                      style: TextStyle(
                        fontSize: 24,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 171,
                        height: 56,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(
                              context,
                              HomePage.routeName,
                            );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Get Started',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 4),
                              Icon(Icons.arrow_forward_ios),
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                            foregroundColor: qGreen2,
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
