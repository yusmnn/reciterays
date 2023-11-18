import 'package:flutter/material.dart';
import 'package:pembukuan_apk/view_models/about_page_view_model.dart';
import 'package:provider/provider.dart';

import '../../utils/constant/const_color.dart';

class AboutPage extends StatefulWidget {
  static const String routeName = '/aboutPage';
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  late AboutPageViewModel provider;

  @override
  void initState() {
    provider = Provider.of<AboutPageViewModel>(context, listen: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        title: const Text(
          'About Aplication',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: qGreen3,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/quran_image.png',
              fit: BoxFit.cover,
              height: 300,
            ),
            const SizedBox(height: 20),
            Text(
              "Aplikasi ReciteRays ini dirancang untuk memudahkan pengguna dalam membaca doa-doa harian dan mendengarkan murottal surah yang disampaikan dengan indah oleh Syaikh Misyari Rasyid Al-'Afasi.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset(
              "assets/images/umi.png",
              height: 100,
              width: 100,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await provider.getReport('yusmnn@gmail.com');
        },
        child: const Icon(
          Icons.info,
          color: Colors.white,
        ),
        backgroundColor: qGreen3,
      ),
    );
  }
}
