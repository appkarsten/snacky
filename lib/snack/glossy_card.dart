import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:snacky/gen/assets.gen.dart';
import 'package:snacky/snack/constants.dart';
import 'package:snacky/snack/snack_home.dart';
import 'package:snacky/snack/styled_button.dart';

class GlossyCard extends StatelessWidget {
  const GlossyCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.01),
            borderRadius: BorderRadius.circular(30),
            border: Border.all(width: 1, color: Colors.white30),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Feeling Snackish Today?',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    'Explore Angi\'s most polular snack selection \nand get instantly happy.',
                    // style: TextStyle(
                    //   color: Colors.white70,
                    //   fontSize: 13.5,
                    // ),
                    textAlign: TextAlign.center,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (content) => SnackHome(),
                    ));
                  },
                  child: Padding(
                      padding: EdgeInsets.all(8),
                      child: StyledButton(text: 'Order Now')),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class GlossyCardHome extends StatelessWidget {
  const GlossyCardHome({
    super.key,
  });

  // final CustomClipper<RRect> rect = RRect.fromLTRBR(0, 0, 100, 200);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 245,
          child: CustomPaint(
            painter: CardPainter(),
            child: ClipPath(
              clipper: CardClipper(),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.01),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Angi\'s Yummy Burger',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Color(0xFFEE81B8),
                                  size: 18,
                                ),
                                Text('4.8'),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Text(
                            'Delish vegan Burger \nthat tastes like heaven',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 0),
                          child: Row(
                            spacing: 5,
                            children: [
                              Text('₳',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineMedium),
                              Text('13.99',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 50),
                          child: StyledButtonHome(text: 'Add to order'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 70,
          right: 18,
          child: Transform.rotate(
            angle: 0.05,
            child: Image.asset('${imagesrc}images/burger.png', width: 187),
          ),
        ),
      ],
    );
  }
}

class GlossyCardDetail extends StatelessWidget {
  const GlossyCardDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.01),
              borderRadius: BorderRadius.circular(30),
              border: Border.all(width: 1, color: Colors.white30),
            ),
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width - 40,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(
                            "Mogli's Cup",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Text(
                            "Ein köstlicher Mix aus Vanille- und Schokoeis, exotischen Früchten wie Mango und Ananas, knusprigem Schoko-Krokant und bunten Streuseln. Gekrönt von einem süßen Schoko-Tiger – perfekt für kleine Abenteurer! 🌴🐾",
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text('₳ 8.99', style: headerOne),
                        ),
                        Divider(),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text('Incredients'),
                                  Row(
                                    spacing: 8,
                                    children: [
                                      Assets.images.svg.heart.svg(width: 15),
                                      Assets.images.svg.lunch.svg(width: 15),
                                      Assets.images.svg.star.svg(width: 15),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text('Reviews'),
                                  Row(
                                    spacing: 5,
                                    children: [
                                      Assets.images.svg.starFilled
                                          .svg(width: 15),
                                      Assets.images.svg.starFilled
                                          .svg(width: 15),
                                      Assets.images.svg.starFilled
                                          .svg(width: 15),
                                      Assets.images.svg.starFilled
                                          .svg(width: 15),
                                      Assets.images.svg.star.svg(width: 15),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ]),
                ),
              ),
            ),
          ),
        ));
  }
}

class CardClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final double roundness = 30;
    final double shortSide = 0.85;
    final path = Path();
    path.lineTo(30, 0);
    path.quadraticBezierTo(0, 0, 0, roundness);
    path.lineTo(0, size.height - roundness);
    path.quadraticBezierTo(0, size.height, roundness + 0.33, size.height);
    path.lineTo(
        size.width - roundness, size.height * shortSide + roundness * 0.33);
    path.quadraticBezierTo(size.width, size.height * shortSide, size.width,
        size.height * shortSide - roundness);
    path.lineTo(size.width, roundness);
    path.quadraticBezierTo(size.width, 0, size.width - roundness, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class CardPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double roundness = 30;
    final double shortSide = 0.85;
    final paint = Paint()
      ..color = Colors.white70.withValues(alpha: 0.3)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.5;

    final path = Path();
    path.moveTo(30, 0);
    path.lineTo(30, 0);
    path.quadraticBezierTo(0, 0, 0, roundness);
    path.lineTo(0, size.height - roundness);
    path.quadraticBezierTo(0, size.height, roundness + 0.33, size.height);
    path.lineTo(
        size.width - roundness, size.height * shortSide + roundness * 0.33);
    path.quadraticBezierTo(size.width, size.height * shortSide, size.width,
        size.height * shortSide - roundness);
    path.lineTo(size.width, roundness);
    path.quadraticBezierTo(size.width, 0, size.width - roundness, 0);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
