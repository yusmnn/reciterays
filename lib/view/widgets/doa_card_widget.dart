import 'package:flutter/material.dart';
import 'package:pembukuan_apk/utils/constant/const_color.dart';

class Doa extends StatelessWidget {
  final String doa;
  final String ayat;
  final String latin;
  final String arti;
  const Doa({
    super.key,
    required this.doa,
    required this.ayat,
    required this.latin,
    required this.arti,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: qGreen3,
      ),
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                doa,
                maxLines: 2,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: qGreen,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Center(
              child: Text(
                ayat,
                maxLines: 10,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
            Text(
              latin,
              maxLines: 10,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Artinya: ",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: qGreen,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              arti,
              maxLines: 10,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}
