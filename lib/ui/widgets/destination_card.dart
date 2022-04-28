import 'package:air_plane/ui/pages/detail_pages.dart';
import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class DestinationCard extends StatelessWidget {
  //
  final String name, city, imageUrl;
  final double rating;
  //

  const DestinationCard(
      {Key? key,
      required this.name,
      required this.city,
      required this.imageUrl,
      required this.rating})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const DetailPage()));
          },
          child: Container(
            margin: EdgeInsets.only(left: defaultMargin),
            padding: const EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width / 1.9,
            height: 348,
            decoration: BoxDecoration(
              color: kWhiteCollor,
              borderRadius: BorderRadius.circular(defaultRadius),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // width: MediaQuery.of(context).size.width / 1.0,
                  margin: const EdgeInsets.only(bottom: 20),
                  height: MediaQuery.of(context).size.height / 3.4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    image: DecorationImage(
                      image: AssetImage(imageUrl),
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 30,
                      width: 54.5,
                      decoration: BoxDecoration(
                        color: kWhiteCollor,
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5, left: 5),
                            child: Image.asset(
                              "assets/icon_star.png",
                              width: 20,
                              height: 20,
                            ),
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          Text(
                            rating.toString(),
                            style: blackTextStyle.copyWith(
                                fontSize: 14, fontWeight: medium),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  child: Text(
                    name,
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: medium,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  child: Text(
                    city,
                    style: greyTextStyle.copyWith(fontWeight: light),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
