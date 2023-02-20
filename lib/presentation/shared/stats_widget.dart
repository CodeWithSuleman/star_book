import 'package:flutter/material.dart';
import 'package:star_book/presentation/utils/padding_style.dart';
import 'package:star_book/theme/styling/theme_color_style.dart';

class StatsWidget extends StatelessWidget {
  final String pointsImagePath;
  final String points;
  final String streakImagePath;
  final String streak;

  const StatsWidget({
    Key? key,
    required this.pointsImagePath,
    required this.points,
    required this.streakImagePath,
    required this.streak,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: screenHeight * 0.26,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Theme.of(context)
                .extension<ThemeColorStyle>()!
                .secondaryColor
                .withOpacity(0.1),
            blurRadius: 100,
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(
          vertical: CustomPadding.smallPadding,
          horizontal: CustomPadding.mediumPadding),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomCard(
            imagePath: pointsImagePath,
            count: points,
            title: 'Points',
          ),
          CustomCard(
            imagePath: streakImagePath,
            count: streak,
            title: 'Streak',
          ),
        ],
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final String imagePath;
  final String count;
  final String title;

  const CustomCard({
    Key? key,
    required this.imagePath,
    required this.count,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: screenHeight * 0.028),
          Image(image: AssetImage(imagePath), height: 55),
          SizedBox(height: screenHeight * 0.025),
          Text(
            count,
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                fontWeight: FontWeight.w700, color: const Color(0xFF1F1F1F)),
          ),
          SizedBox(height: screenHeight * 0.02),
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(fontWeight: FontWeight.w400),
          ),
          SizedBox(height: screenHeight * 0.028),
        ],
      ),
    );
  }
}
