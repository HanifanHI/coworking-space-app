import 'package:coworking_space_app/shared/theme.dart';
import 'package:coworking_space_app/widgets/bottom_navigation_item.dart';
import 'package:coworking_space_app/widgets/event_widget.dart';
import 'package:coworking_space_app/widgets/popular_widget.dart';
import 'package:coworking_space_app/widgets/recommended_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // * HEADER
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          left: 24,
          right: 24,
          top: 24,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Space King',
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: medium,
                    ),
                  ),
                  Text(
                    'Where freelancer working',
                    style: lightGreyTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: light,
                    ),
                  )
                ],
              ),
            ),
            Stack(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/user.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  right: 4,
                  top: 4,
                  child: Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: kOrangeColor,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      );
    }

    // * SEARCH
    Widget search() {
      return Container(
        margin: EdgeInsets.only(
          left: 24,
          right: 24,
          top: 26,
        ),
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: kGreyBoxColor,
        ),
        child: Center(
          child: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(
                Icons.search,
                size: 24,
              ),
              prefixStyle: blackTextStyle,
              hintText: 'Search coworking ...',
              hintStyle: greyTextStyle.copyWith(
                fontSize: 16,
                fontWeight: regular,
              ),
            ),
          ),
        ),
      );
    }

    // * POPULAR
    Widget popular() {
      return Container(
        margin: EdgeInsets.only(left: 24, top: 26),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Popular Countries',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: regular,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              height: 150,
              width: double.infinity,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    PopularWidget(
                      imageUrl: 'assets/image-popular1.png',
                      city: 'Germany',
                    ),
                    PopularWidget(
                      imageUrl: 'assets/image-popular2.png',
                      city: 'Bandung',
                      isStar: true,
                    ),
                    PopularWidget(
                      imageUrl: 'assets/image-popular3.png',
                      city: 'Indonesia',
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }

    // * RECOMMENDED
    Widget recommended() {
      return Container(
        margin: EdgeInsets.only(left: 24, right: 24, top: 26),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Recommended Space',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: regular,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            RecommendedWidget(
              imageUrl: 'assets/image-recomended1.png',
              name: 'Kang Kerja',
              price: 52,
              city: 'Bandung, Germany',
              rating: '4',
            ),
            RecommendedWidget(
              imageUrl: 'assets/image-recomended2.png',
              name: 'Roemah Nenek',
              price: 11,
              city: 'Seattle, Bogor',
              rating: '5',
            ),
            RecommendedWidget(
              imageUrl: 'assets/image-recomended3.png',
              name: 'He Matt She X',
              price: 20,
              city: 'Jakarta, Indonesia',
              rating: '3',
            ),
          ],
        ),
      );
    }

    // * BANNER
    Widget banner() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 24),
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage('assets/box.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          children: [
            Container(
              width: 54,
              height: 54,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/icon-circle.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Use A.I for better place',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
                Text(
                  'Learn More',
                  style: orangeTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: light,
                    decoration: TextDecoration.underline,
                  ),
                )
              ],
            )
          ],
        ),
      );
    }

    // * EVENTS
    Widget events() {
      return Container(
        margin: EdgeInsets.only(left: 24, right: 24, top: 22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Ongoing Events',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: regular,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            EventWidget(
              imageUrl: 'assets/event1.png',
              title: 'Basic ReasonML',
              subTitle: 'StarSpace, Buera',
            ),
            EventWidget(
              imageUrl: 'assets/event2.png',
              title: 'React for New',
              subTitle: 'Face 22, Alto',
            ),
          ],
        ),
      );
    }

    // * BOTTOM NAVIGATION
    Widget bottomNavigation() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 24, vertical: 33),
        height: 65,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: kGreyBoxColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavigationItem(
              imageUrl: 'assets/menu-home.png',
              isSelected: true,
            ),
            BottomNavigationItem(
              imageUrl: 'assets/menu-mail.png',
            ),
            BottomNavigationItem(
              imageUrl: 'assets/menu-card.png',
            ),
            BottomNavigationItem(
              imageUrl: 'assets/menu-love.png',
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            header(),
            search(),
            popular(),
            recommended(),
            banner(),
            events(),
            bottomNavigation(),
          ],
        ),
      ),
    );
  }
}
