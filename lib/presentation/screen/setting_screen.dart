import 'package:flutter/material.dart';
import 'package:star_book/presentation/shared/tile.dart';
import 'package:star_book/presentation/utils/padding_style.dart';
import 'package:star_book/widgets/gradient_scaffold.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return GradientScaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          'Settings',
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(fontWeight: FontWeight.w700),
        ),
      ),
      body: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: CustomPadding.smallPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: screenHeight * 0.04),
            CustomTile(
                title: 'Starbook Community',
                subtitle: 'Know who’s using starbook app',
                onTap: () {}),
            CustomTile(
                title: 'About Developer',
                subtitle: 'Person info who developed this amazing app',
                onTap: () {}),
            CustomTile(
                title: 'Privacy & Terms',
                subtitle: 'All your data and personal info terms',
                onTap: () {}),
            CustomTile(
                title: 'License Agreement',
                subtitle: 'Your licensed agreement with starbook',
                onTap: () {}),
            SizedBox(height: screenHeight * 0.34),
            Text(
              'App version 2.0',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 10),
            const BlocShipTile(),
            const SizedBox(height: 10),
            const UxerShipTile(),
          ],
        ),
      ),
    );
  }
}