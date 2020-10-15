import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

const Color MAIN_COLOR_0 = Color.fromRGBO(189, 200, 255, 1.0);
const Color MAIN_COLOR_1 = Color.fromRGBO(189, 144, 255, 1.0);
const Color MAIN_COLOR_2 = Color.fromRGBO(143, 173, 255, 1.0);
const Color MAIN_COLOR_3 = Color.fromRGBO(255, 143, 210, 1.0);

const Color TEXT_COLOR_BRIGHT_1 = Color.fromRGBO(255, 255, 255, 1.0);
const Color TEXT_COLOR2_BRIGHT_2 = Color.fromRGBO(220, 220, 220, 1.0);
const Color TEXT_COLOR3_DARK_1 = Color.fromRGBO(80, 80, 80, 1.0);
const Color TEXT_COLOR3_DARK_2 = Color.fromRGBO(30, 30, 30, 1.0);

const double BORDER_RADIUS = 10.0;

const double PADDING_SMALL = 10.0;
const double PADDING_MEDIUM = 20.0;
const double PADDING_LARGE = 40.0;

// TextWidget Provider
class TextProvider extends StatelessWidget {
  final String textContent;
  final Color textColor;
  final double textSize;
  final bool bold;
  final bool spacing;

  const TextProvider({
    Key key,
    @required this.textContent,
    @required this.textColor,
    @required this.textSize,
    @required this.bold,
    @required this.spacing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      textContent,
      style: GoogleFonts.quicksand(
        color: textColor,
        fontSize: textSize,
        fontWeight: bold ? FontWeight.bold : FontWeight.normal,
        letterSpacing: !spacing ? 1.0 : 2.0,
      ),
    );
  }
}

class IconProvider extends StatelessWidget {
  final Icon iconType;
  final bool iconBig;
  final Color iconColor;

  const IconProvider({
    Key key,
    @required this.iconType,
    @required this.iconBig,
    @required this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(PADDING_SMALL),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(BORDER_RADIUS),
      ),
      child: iconType,
    );
  }
}
