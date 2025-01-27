import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:snacky/snack/constants.dart';
import 'package:snacky/snack/glossy_card.dart';
import 'package:snacky/snack/styled_button.dart';
import 'package:snacky/gen/assets.gen.dart';

class SnackHome extends StatelessWidget {
  SnackHome({super.key});

  final List<String> _dropdownValues = ['Salty', 'Sweet', 'Crunchy'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Assets.images.backgrounds.bgMainscreen.path),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(top: 75.0, bottom: 18, left: 16),
                  child: Text(
                    'Choose Your Favorite \nSnack',
                    style: headerOne,
                  ),
                ),
                TasteSelector(dropdownValues: _dropdownValues),
                SizedBox(height: 35),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0, left: 16),
                  child: GlossyCardHome(),
                ),
                SizedBox(height: 45),
                Padding(
                  padding: const EdgeInsets.only(left: 16, bottom: 16),
                  child: Text(
                    'We Recommend',
                    style: headerTwo,
                  ),
                ),
                SizedBox(
                  height: 270,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(width: 16),
                      RecommendCard(
                          path: Assets.images.cupCat.path,
                          header: "Mogli's Cup",
                          sub: "Strawberry ice cream",
                          price: 8.99,
                          likes: 200),
                      RecommendCard(
                          path: Assets.images.cupIce.path,
                          header: "Mogli's Cup",
                          sub: "Strawberry ice cream",
                          price: 8.99,
                          likes: 200),
                      RecommendCard(
                          path: Assets.images.stickIce.path,
                          header: "Mogli's Cup",
                          sub: "Strawberry ice cream",
                          price: 8.99,
                          likes: 200),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TasteSelect2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      child: Text('sfd'),
    );
  }
}

class RecommendCard extends StatelessWidget {
  final String path;
  final String header;
  final String sub;
  final double price;
  final int likes;

  const RecommendCard({
    required this.path,
    required this.header,
    required this.sub,
    required this.price,
    required this.likes,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _showBottomSheet(context),
      child: Padding(
        padding: const EdgeInsets.only(right: 25.0),
        child: Container(
          width: 200,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF6F6D78),
                Color(0xFF908EDE),
                Color(0xFF8B5DE9),
              ],
            ),
            borderRadius: BorderRadius.circular(30),
            border: Border.all(
                width: 1, color: Colors.white60.withValues(alpha: 0.4)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 10),
              Image.asset(
                path,
                height: 165,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(header, style: cardHeader),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, bottom: 15),
                child: Text(sub, style: cardSub),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RecommendCardPrice(price: price),
                    RecoomendCardLikes(likes: likes),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showBottomSheet(BuildContext context) {
    showBottomSheet(
      context: context,
      backgroundColor: Colors.black.withValues(alpha: 0.2),
      builder: (context) => SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.all(0),
          child: Stack(
            children: [
              Positioned(
                  top: 100,
                  child: Container(
                    height: MediaQuery.of(context).size.height - 110,
                    width: MediaQuery.of(context).size.width,
                    color: Color(0xFF2F2B22),
                  )),
              Positioned(
                  top: -35, child: Assets.images.cupCat.image(width: 400)),
              Positioned(
                top: 130,
                right: 16,
                child: InkWell(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    height: 35,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white38),
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white.withValues(alpha: 0.1),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Icon(Icons.close,
                          color: Colors.white.withValues(alpha: 0.5)),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 280,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: GlossyCardDetail(),
                ),
              ),
              Positioned(
                top: 700,
                child: Center(
                  child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (content) => SnackHome(),
                        ));
                      },
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child:
                            StyledButtonDetail(text: 'Add to Order for ₳ 8.99'),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class RecoomendCardLikes extends StatelessWidget {
  const RecoomendCardLikes({
    super.key,
    required this.likes,
  });

  final int likes;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 5,
      children: [
        //ssets.images.
        Assets.images.svg.heart.svg(height: 15),
        Text('$likes', style: cardSub),
      ],
    );
  }
}

class RecommendCardPrice extends StatelessWidget {
  const RecommendCardPrice({
    super.key,
    required this.price,
  });

  final double price;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 5,
      children: [
        Assets.images.svg.a.svg(height: 15),
        Text('$price', style: headerTwo),
      ],
    );
  }
}

class TasteSelector extends StatelessWidget {
  const TasteSelector({
    super.key,
    required List<String> dropdownValues,
  }) : _dropdownValues = dropdownValues;

  final List<String> _dropdownValues;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(width: 16),
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 60, sigmaY: 60),
              child: Container(
                height: 70,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white38),
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white.withValues(alpha: 0.1),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    spacing: 5,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Assets.images.svg.lunch.svg(
                          height: 15,
                          colorFilter: ColorFilter.mode(
                              Colors.white38, BlendMode.srcIn)),
                      Text('All Categories',
                          style: Theme.of(context).textTheme.labelSmall),
                      Icon(
                        Icons.arrow_downward_sharp,
                        size: 15,
                        color: Colors.white38,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          for (int i = 0; i < 3; i++)
            Row(
              children: [
                SizedBox(width: 10),
                ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
                      child: Container(
                          height: 70,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white38),
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white.withValues(alpha: 0.1),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                            child: Text(
                              _dropdownValues[i],
                            ),
                          )),
                    )),
              ],
            )
        ],
      ),
    );
  }
}
