import 'package:coworking_space_app/shared/theme.dart';
import 'package:flutter/material.dart';

class BottomNavigationItem extends StatelessWidget {
  final bool isSelected;
  final String imageUrl;

  BottomNavigationItem({
    required this.imageUrl,
    this.isSelected = false,
  });
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? Container(
            height: 65,
            width: 30,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(),
                Image.asset(
                  imageUrl,
                  width: 26,
                  height: 26,
                  color: kPurpleColor,
                ),
                Container(
                  height: 4,
                  width: 30,
                  color: kPurpleColor,
                )
              ],
            ),
          )
        : Center(
            child: Image.asset(
              imageUrl,
              width: 26,
              height: 26,
              color: kLightGreyColor,
            ),
          );
  }
}
