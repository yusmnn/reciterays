import 'package:flutter/material.dart';

import '../../utils/constant/const_color.dart';

class NavCardWidget extends StatelessWidget {
  final Color bgColor;
  final String title;
  final String iconImage;
  final String vectoreImage;
  final void Function() onTap;
  const NavCardWidget({
    super.key,
    required this.bgColor,
    required this.title,
    required this.iconImage,
    required this.vectoreImage,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: bgColor,
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(23),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 20,
              left: 20,
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: qGreen3,
                ),
              ),
            ),
            Image.asset(
              vectoreImage,
              width: 200.0,
              height: 200.0,
              fit: BoxFit.cover,
            ),
            Image.asset(
              iconImage,
              width: 80,
              height: 50,
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
    );
  }
}
