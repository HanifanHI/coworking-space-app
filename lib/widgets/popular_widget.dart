import 'package:coworking_space_app/shared/theme.dart';
import 'package:flutter/material.dart';

class PopularWidget extends StatelessWidget {
  final String imageUrl;
  final String city;
  final bool isStar;

  PopularWidget({
    required this.imageUrl,
    required this.city,
    this.isStar = false,
  });
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(right: 20),
          height: 150,
          width: 120,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imageUrl),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        Container(
          width: 120,
          height: 150,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              isStar
                  ? Container(
                      width: 50,
                      height: 30,
                      decoration: BoxDecoration(
                        color: kPurpleColor,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(30)),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 17,
                          ),
                          Image.asset(
                            'assets/icon-star.png',
                            width: 24,
                            height: 24,
                          ),
                        ],
                      ),
                    )
                  : SizedBox(),
              Container(
                height: 48,
                width: 120,
                decoration: BoxDecoration(
                  color: kGreyBoxColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Center(
                  child: Text(
                    city,
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
