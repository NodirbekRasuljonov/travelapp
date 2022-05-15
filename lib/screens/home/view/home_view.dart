import 'package:flutter/material.dart';
import 'package:travelapp/core/constants/color_const.dart';
import 'package:travelapp/core/constants/radius_const.dart';
import 'package:travelapp/core/extensions/context_extension.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:on_click/on_click.dart';
import 'package:easy_localization/easy_localization.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.transparent,
        height: context.h,
        width: context.h,
        child: Stack(
          children: [
            Positioned(
              child: Container(
                height: context.h * 0.4,
                width: context.h,
                child: Stack(
                  children: [
                    Positioned(
                      top: context.h * 0.042,
                      left: context.h * 0.032,
                      child: CircleAvatar(
                        radius: 33.0,
                        backgroundImage: CachedNetworkImageProvider(
                          'https://images.unsplash.com/photo-1520341280432-4749d4d7bcf9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
                        ),
                      ),
                    ),
                    Positioned(
                      top: context.h * 0.05,
                      right: context.h * 0.032,
                      child: Container(
                              height: context.h * 0.055,
                              width: context.h * 0.055,
                              decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.2),
                                  borderRadius:
                                      BorderRadius.circular(RadiusConst.small)),
                              child: Image.asset('assets/images/Category.png'))
                          .onClick(() {
                        debugPrint("salom");
                      }),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/home.png'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: ColorConst.splashtextcolor,
        unselectedIconTheme: IconThemeData(color: ColorConst.textColor),
        selectedIconTheme: IconThemeData(color: ColorConst.kPrimaryColor),
        selectedItemColor: ColorConst.kPrimaryColor,
        selectedLabelStyle: TextStyle(color: ColorConst.kPrimaryColor),
        unselectedLabelStyle: TextStyle(color: ColorConst.textColor),
        items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'explore'.tr(),
          

        ),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_month_outlined,
            ),
            label: 'reservation'.tr()),
        BottomNavigationBarItem(
          icon: Icon(Icons.bookmark_border),
          label: 'saved'.tr(),
          
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline_rounded),
          label: 'profile'.tr(),
        ),
      ]),
    );
  }
}
