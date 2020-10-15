import 'package:flutter/material.dart';

import '../../constants.dart';

class TopMenuBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(
              top: PADDING_MEDIUM, left: PADDING_MEDIUM, right: PADDING_MEDIUM),
          child: TopMenuBarItem(
            icon: Icon(
              Icons.menu,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
              top: PADDING_MEDIUM, left: PADDING_MEDIUM, right: PADDING_MEDIUM),
          child: TopMenuBarItem(
            icon: Icon(
              Icons.settings,
            ),
          ),
        ),
      ],
    );
  }
}

class TopMenuBarItem extends StatelessWidget {
  final Icon icon;

  const TopMenuBarItem({Key key, @required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconProvider(
      iconBig: false,
      iconType: icon,
      iconColor: TEXT_COLOR_BRIGHT_1,
    );
  }
}
