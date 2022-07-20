import 'package:flutter/material.dart';
import 'package:food_delivery/utils/dimensions.dart';

class IconAndTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColor;
  IconAndTextWidget(
      {Key? key,
      required this.icon,
      required this.iconColor,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconColor,
          size: Dimensions.iconseSize24,
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          text,
        )
      ],
    );
  }
}
