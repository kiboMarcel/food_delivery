import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../utils/dimensions.dart';
import 'big_text.dart';
import 'icon_and_text_widget.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(
          text: text,
          size: Dimensions.font26,
        ),
        SizedBox(
          height: Dimensions.height10,
        ),
        Row(
          children: [
            Wrap(
              children: List.generate(5, (index) {
                return Icon(
                  Icons.star,
                  color: AppColors.mainColor,
                  size: 15,
                );
              }),
            ),
            SizedBox(width: Dimensions.width10),
            Text('4.5'),
            SizedBox(
              width: 10,
            ),
            Text('1287'),
            SizedBox(width: Dimensions.widtht20),
            Text('Comments'),
          ],
        ),
        SizedBox(
          height: Dimensions.height20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndTextWidget(
                icon: Icons.circle_sharp,
                iconColor: AppColors.iconColor1,
                text: 'Normal'),
            IconAndTextWidget(
                icon: Icons.location_on,
                iconColor: AppColors.mainColor,
                text: '1.7 km'),
            IconAndTextWidget(
                icon: Icons.access_time_rounded,
                iconColor: AppColors.iconColor2,
                text: '32 min'),
          ],
        )
      ],
    );
  }
}
