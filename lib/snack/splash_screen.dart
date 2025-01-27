import 'package:flutter/material.dart';
import 'package:snacky/snack/constants.dart';
import 'package:snacky/snack/glossy_card.dart';
import 'package:snacky/gen/assets.gen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Stack(children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Assets.images.backgrounds.bgStartscreen.path),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 102,
          right: -136,
          child: Image.asset(
            '${imagesrc}images/cup_chick.png',
            width: 574,
            fit: BoxFit.fitWidth,
            alignment: Alignment.topRight,
          ),
        ),
        Positioned(
          top: 460,
          child: Image.asset(
            '${imagesrc}images/details/snack_snack.png',
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fill,
            height: 320,
            opacity: const AlwaysStoppedAnimation(0.6),
          ),
        ),
        Positioned(
          top: 560,
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: GlossyCard(),
            ),
          ),
        ),
      ])),
    );
  }
}
