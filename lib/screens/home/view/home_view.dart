import 'package:flutter/material.dart';
import 'package:travelapp/core/constants/color_const.dart';
import 'package:travelapp/core/constants/radius_const.dart';
import 'package:travelapp/core/constants/size_const.dart';
import 'package:travelapp/core/extensions/context_extension.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:on_click/on_click.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:travelapp/screens/home/view/home_Main.dart';
import 'package:travelapp/screens/profile/profile_state/profile_view.dart';
import 'package:travelapp/screens/reversations/reservation_view/reservation_view.dart';
import 'package:travelapp/screens/saved/saved_view/saved_view.dart';

class HomeView extends StatefulWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  PageController controller = PageController();
  int currentindex = 0;
  List<Widget> pages = [
    HomeMainView(),
    const ReservationView(),
    const SavedView(),
   const ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: pages[currentindex],
      bottomNavigationBar: Container(
        height: context.h * 0.07,
        width: context.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(RadiusConst.large),
            topRight: Radius.circular(RadiusConst.large),
          ),
          color: ColorConst.splashtextcolor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: bars(
                label: 'explore',
                iconData: Icon(
                  Icons.search_rounded,
                  color: currentindex == 0
                      ? ColorConst.kPrimaryColor
                      : ColorConst.textColor,
                ),
                index: 0,
              ),
            ),
            Expanded(
              child: bars(
                label: 'reservation',
                iconData: Icon(
                  Icons.calendar_month_outlined,
                  color: currentindex == 1
                      ? ColorConst.kPrimaryColor
                      : ColorConst.textColor,
                ),
                index: 1,
              ),
            ),
            Expanded(
              child: bars(
                label: 'saved',
                iconData: Icon(
                  Icons.bookmark_border_outlined,
                  color: currentindex == 2
                      ? ColorConst.kPrimaryColor
                      : ColorConst.textColor,
                ),
                index: 2,
              ),
            ),
            Expanded(
              child: bars(
                label: 'profile',
                iconData: Icon(
                  Icons.person_outline_rounded,
                  color: currentindex == 3
                      ? ColorConst.kPrimaryColor
                      : ColorConst.textColor,
                ),
                index: 3,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget bars(
      {required String label, required Icon iconData, required int index}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        iconData,
        Text(
          label.tr(),
          style: TextStyle(
            color: currentindex == index
                ? ColorConst.kPrimaryColor
                : ColorConst.textColor,
            fontSize: 12,
          ),
        ),
      ],
    ).onClick(() {
      currentindex = index;
      setState(() {});
    });
  }
}
