import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../utils/dimensions.dart';

class ExpendableTextWidget extends StatefulWidget {
  final String text;
  ExpendableTextWidget({Key? key, required this.text}) : super(key: key);

  @override
  State<ExpendableTextWidget> createState() => _ExpendableTextWidget();
}

class _ExpendableTextWidget extends State<ExpendableTextWidget> {
  late String firstHalf;
  late String secondHalf;

  bool hiddenText = true;
  double textHeight = Dimensions.screenHeight / 5.63;

  @override
  void initState() {
    if (widget.text.length > textHeight) {
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf =
          widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: secondHalf.isEmpty
            ? Text(
                firstHalf,
                style: TextStyle(fontSize: 40, height: 1.7),
              )
            : Column(children: [
                Text(
                  hiddenText ? ("$firstHalf...") : (firstHalf + secondHalf),
                  style: TextStyle(fontSize: 40, height: 1.7),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      hiddenText = !hiddenText;
                    });
                  },
                  child: Row(children: [
                    Text('show more',
                        style: TextStyle(color: AppColors.mainColor)),
                    Icon(
                        hiddenText
                            ? Icons.arrow_drop_down
                            : Icons.arrow_drop_up,
                        color: AppColors.mainColor),
                  ]),
                )
              ]));
  }
}
