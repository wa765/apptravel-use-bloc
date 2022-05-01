import 'package:air_plane/shared/theme.dart';
import 'package:air_plane/ui/widgets/costum_button.dart';
import 'package:flutter/material.dart';

class SuccesCheckoutPage extends StatelessWidget {
  const SuccesCheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundCollor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 80),
              width: MediaQuery.of(context).size.width / 1.8,
              height: MediaQuery.of(context).size.width / 3,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/image_succes.png"))),
            ),
            Text(
              "Well Booked 😍",
              style:
                  blackTextStyle.copyWith(fontSize: 32, fontWeight: semiBold),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Are you ready to explore the new \nworld of experiences?",
              style: greyTextStyle.copyWith(fontSize: 16, fontWeight: light),
              textAlign: TextAlign.center,
            ),
            CostumButton(
              title: "My Booking",
              onPressed: () {
                // ini tidak akan bisa undo tampilan
                Navigator.pushNamedAndRemoveUntil(
                    context, "/main-page", (route) => false);
              },
              margin: const EdgeInsets.only(top: 50),
              width: MediaQuery.of(context).size.width / 1.6,
            ),
          ],
        ),
      ),
    );
  }
}
