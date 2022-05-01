import 'package:air_plane/ui/pages/home_page.dart';
import 'package:air_plane/ui/pages/setting_page.dart';
import 'package:air_plane/ui/pages/transaction_page.dart';
import 'package:air_plane/ui/pages/wallet_page.dart';
import 'package:air_plane/ui/widgets/costum_bottom_navigation_item.dart';
import 'package:flutter/material.dart';
import 'package:air_plane/shared/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/page_cubit.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);
  //
  @override
  Widget build(BuildContext context) {
    Widget buildContent(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return const HomePage();
        case 1:
          return const TransactionPage();
        case 2:
          return const WalletPage();
        case 3:
          return const SettingPage();
        default:
          return const HomePage();
      }
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
            children: [
              CostumNavigationItem(
                index: 0,
                imageUrl: "assets/icon_home.png",
              ),
              CostumNavigationItem(
                index: 1,
                imageUrl: "assets/icon_booking.png",
              ),
              CostumNavigationItem(
                index: 2,
                imageUrl: "assets/icon_card.png",
              ),
              CostumNavigationItem(
                index: 3,
                imageUrl: "assets/icon_settings.png",
              )
            ],
          ),
        ),
      );
    }

    //

    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          backgroundColor: kBackgroundCollor,
          body: Stack(
            children: [buildContent(currentIndex), costumBottomNavigation()],
          ),
        );
      },
    );
  }
}
