import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ========================  Spacing  ==============================
double defaultMargin = 24.0;
double defaultRadius = 17.0;

// ========================  Collor  ==============================

// Primary Collor
Color kPrimaryCollor = const Color(0xff5C40CC);

// Black Collor
Color kBlackCollor = const Color(0xff1F1449);

// White Collor
Color kWhiteCollor = Colors.white;

// Grey Collor
Color kGreyCollor = const Color(0xff9698A9);

// Green Collor
Color kGreenCollor = const Color(0xff0EC3AE);

// Red Collor
Color kRedCollor = const Color(0xffEB70A5);

// Bg Collor
Color kBackgroundCollor = const Color(0xffFAFAFA);

// In Active Collor
Color kInactiveCollor = const Color(0xffDBD7EC);

// Transparent Color
Color kTransparentCollor = Colors.transparent;

// Unavailable Color
Color kUnavailableCollor = const Color(0xffEBECF1);

// Available Color
Color kAavailableCollor = const Color(0xffE0D9FF);

// Selected Color
Color kSelectedCollor = const Color(0xff5C40CC);
// ========================  Text Style  ==============================
TextStyle blackTextStyle = GoogleFonts.poppins(
  color: kBlackCollor,
);

TextStyle whiteTextStyle = GoogleFonts.poppins(
  color: kWhiteCollor,
);

TextStyle greyTextStyle = GoogleFonts.poppins(
  color: kGreyCollor,
);

TextStyle redTextStyle = GoogleFonts.poppins(
  color: kRedCollor,
);

TextStyle greenTextStyle = GoogleFonts.poppins(
  color: kGreenCollor,
);

TextStyle purpleTextStyle = GoogleFonts.poppins(
  color: kPrimaryCollor,
);

// ========================  Font Weight  ==============================

FontWeight light = FontWeight.w300;

FontWeight regular = FontWeight.w400;

FontWeight medium = FontWeight.w500;

FontWeight semiBold = FontWeight.w600;

FontWeight extraBold = FontWeight.w800;

FontWeight black = FontWeight.w900;
