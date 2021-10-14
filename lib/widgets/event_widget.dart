import 'package:coworking_space_app/shared/theme.dart';
import 'package:flutter/material.dart';

class EventWidget extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subTitle;

  EventWidget({
    required this.imageUrl,
    required this.title,
    required this.subTitle,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      height: 80,
      width: double.infinity,
      child: Row(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                  ),
                ),
                Text(
                  subTitle,
                  style: lightGreyTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: light,
                  ),
                )
              ],
            ),
          ),
          Center(
            child: Icon(
              Icons.keyboard_arrow_right,
              size: 24,
              color: kLightGreyColor,
            ),
          )
        ],
      ),
    );
  }
}
