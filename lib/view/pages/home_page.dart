import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pembukuan_apk/view/pages/about_page.dart';
import '../widgets/nav_card_widget.dart';
import '/utils/constant/const_hadist.dart';
import '../../utils/constant/const_color.dart';
import 'doa_page.dart';
import 'murottal_surah_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const routeName = '/home_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'ReciteRays',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: qGreen3,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, AboutPage.routeName);
            },
            icon: const Icon(
              Icons.info,
              color: qGreen3,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Swiper(
              containerHeight: 300,
              autoplay: true,
              autoplayDelay: 5000,
              itemCount: daftarHadis.length,
              viewportFraction: 0.9,
              layout: SwiperLayout.DEFAULT,
              axisDirection: AxisDirection.right,
              itemBuilder: (context, index) {
                debugPrint('index $index');
                return Container(
                  // height: MediaQuery.of(context).size.height * 0.5,
                  height: 300,
                  width: 200,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage('assets/images/vector_card.png'),
                      fit: BoxFit.cover,
                    ),
                    gradient: LinearGradient(
                      // Menambahkan linear gradient
                      colors: [
                        Color(0xFF006754),
                        Color(0xFF87D1A4)
                      ], // Warna gradient
                      begin: Alignment.topCenter, // Atur arah gradient
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Padding(
                      padding: EdgeInsets.all(27),
                      child: Center(
                        child: Text(
                          ' \"${daftarHadis[index]}\"',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.notoNaskhArabic(
                            textStyle: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.023,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                              color: qbackgroundColor,
                            ),
                          ),
                        ),
                      )),
                );
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: GridView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 24,
                crossAxisSpacing: 24,
              ),
              children: [
                NavCardWidget(
                  bgColor: Color(0xffF5FAF4),
                  title: 'Doa Harian',
                  iconImage: 'assets/icons/quran_icon.png',
                  vectoreImage: 'assets/images/green_vector.png',
                  onTap: () {
                    Navigator.pushNamed(context, DoaPage.routeName);
                  },
                ),
                NavCardWidget(
                  bgColor: Color(0xffF5FAF4),
                  title: 'Murottal Surah',
                  iconImage: 'assets/icons/headphone-icon.png',
                  vectoreImage: 'assets/images/red_vector.png',
                  onTap: () {
                    Navigator.pushNamed(context, MurottalSurahPage.routeName);
                  },
                ),
                Container(
                  color: Colors.transparent,
                ),
                Container(
                  color: Colors.transparent,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
