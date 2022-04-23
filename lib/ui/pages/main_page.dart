import 'package:air_plane/ui/pages/home_page.dart';
import 'package:air_plane/ui/widgets/costum_bottom_navigation_item.dart';
import 'package:flutter/material.dart';
import 'package:air_plane/shared/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);
  //
  Widget buildContent() {
    return const HomePage();
  }

  // Widget Bottom Navigation
  Widget costumBottomNavigation() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.only(
            bottom: 30, left: defaultMargin, right: defaultMargin),
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          color: kWhiteCollor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            CostumNavigationItem(
              imageUrl: "assets/icon_home.png",
              isSelected: true,
            ),
            CostumNavigationItem(
              imageUrl: "assets/icon_booking.png",
            ),
            CostumNavigationItem(
              imageUrl: "assets/icon_card.png",
            ),
            CostumNavigationItem(
              imageUrl: "assets/icon_settings.png",
            )
          ],
        ),
      ),
    );
  }

  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundCollor,
      body: Stack(
        children: [buildContent(), costumBottomNavigation()],
      ),
    );
  }
}
