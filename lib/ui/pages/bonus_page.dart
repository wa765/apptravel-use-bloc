import 'package:air_plane/ui/widgets/costum_button.dart';
import 'package:flutter/material.dart';
import 'package:air_plane/shared/theme.dart';

class BonusPage extends StatelessWidget {
  const BonusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Widget Bonus Card
    Widget bonusCard() {
      return Container(
        padding: EdgeInsets.symmetric(
            horizontal: defaultMargin, vertical: defaultMargin),
        width: MediaQuery.of(context).size.width / 1.3,
        height: 211,
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage("assets/image_card.png"),
          ),
          boxShadow: [
            BoxShadow(
              color: kPrimaryCollor.withOpacity(0.5),
              blurRadius: 50,
              offset: const Offset(0, 10),
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Name",
                        style: whiteTextStyle.copyWith(
                            fontSize: 14, fontWeight: light),
                      ),
                      Text(
                        "Kezia Anne",
                        style: whiteTextStyle.copyWith(
                          fontSize: 20,
                          fontWeight: medium,
                        ),
                        // jika tulisan panjang maka akan menjad titik"
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 24,
                  height: 24,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/logo.png"),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 6,
                ),
                Text(
                  "Pay",
                  style:
                      whiteTextStyle.copyWith(fontSize: 16, fontWeight: medium),
                ),
              ],
            ),
            const Spacer(),
            Text(
              "Balance",
              style: whiteTextStyle.copyWith(
                fontSize: 14,
                fontWeight: light,
              ),
            ),
            Text(
              "IDR 280.000.000",
              style:
                  whiteTextStyle.copyWith(fontSize: 26, fontWeight: semiBold),
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      );
    }

    // Title Widget
    Widget title() {
      return Container(
        margin: const EdgeInsets.only(top: 80),
        child: Text(
          "Big Bonus 🎉",
          style: blackTextStyle.copyWith(fontSize: 32, fontWeight: semiBold),
        ),
      );
    }

    // Subtitle Widget
    Widget subtitle() {
      return Container(
        margin: const EdgeInsets.only(top: 10, bottom: 50),
        child: Text(
          "We give you early credit so that\nyou can buy a flight ticket",
          style: greyTextStyle.copyWith(fontSize: 16, fontWeight: light),
          textAlign: TextAlign.center,
        ),
      );
    }

    // Start Fly Now Button Widget
    Widget startButton() {
      return CostumButton(
          title: "Start Fly Now",
          width: MediaQuery.of(context).size.width / 1.5,
          onPressed: () {
            Navigator.pushNamed(context, '/main-page');
          });
    }

    //
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [bonusCard(), title(), subtitle(), startButton()],
        ),
      ),
    );
  }
}
