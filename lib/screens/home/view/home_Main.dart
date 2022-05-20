import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:on_click/extensions/click_extension.dart';
import 'package:travelapp/core/constants/color_const.dart';
import 'package:travelapp/core/constants/radius_const.dart';
import 'package:travelapp/core/constants/size_const.dart';
import 'package:travelapp/core/extensions/context_extension.dart';

class HomeMainView extends StatefulWidget {
  HomeMainView({Key? key}) : super(key: key);

  @override
  State<HomeMainView> createState() => _HomeMainViewState();
}

class _HomeMainViewState extends State<HomeMainView> {
  int currentsindex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                    child: const CircleAvatar(
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
                        borderRadius: BorderRadius.circular(RadiusConst.small),
                      ),
                      child: Image.asset('assets/images/Category.png'),
                    ).onClick(() {
                      debugPrint("salom");
                    }),
                  ),
                ],
              ),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/home.png'),
                ),
              ),
            ),
          ),
          Positioned(
            top: context.h * 0.355,
            right: 0.0,
            left: 0.0,
            child: Row(
              children: [
                Expanded(
                  child: categories(context: context, index: 0, text: 'home'),
                ),
                Expanded(
                  child: categories(
                    context: context,
                    text: 'apartment',
                    index: 1,
                  ),
                ),
                Expanded(
                  child: categories(context: context, text: 'cabins', index: 2),
                ),
                Expanded(
                  child: categories(
                    context: context,
                    text: 'beachfont',
                    index: 3,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: context.h * 0.161,
            left: context.h * 0.032,
            right: context.h * 0.274,
            child: Text(
              'hi'.tr(),
              style: TextStyle(color: ColorConst.textColor, fontSize: 20.0),
            ),
          ),
          Positioned(
            top: context.h * 0.199,
            left: context.h * 0.032,
            right: 0.0,
            child: Container(
              height: context.h * 0.064,
              width: context.h * 0.318,
              child: Text(
                'find'.tr(),
                style: TextStyle(
                  color: ColorConst.textColor,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Positioned(
            top: context.h * 0.281,
            left: context.h * 0.032,
            bottom: context.h * 0.595,
            right: context.h * 0.102,
            child: SizedBox(
              height: context.h,
              width: context.h,
              child: TextFormField(
                decoration: InputDecoration(
                  fillColor: Color(0xffEEF0F2),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(RadiusConst.small),
                      bottomLeft: Radius.circular(
                        RadiusConst.small,
                      ),
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(RadiusConst.small),
                      bottomLeft: Radius.circular(
                        RadiusConst.small,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: context.h * 0.281,
            right: context.h * 0.045,
            bottom: context.h * 0.595,
            child: Container(
              width: context.h * 0.060,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(
                    RadiusConst.small,
                  ),
                  bottomRight: Radius.circular(
                    RadiusConst.small,
                  ),
                ),
                color: ColorConst.kPrimaryColor,
              ),
              // child: SvgPicture.asset('assets/svg/Filter.svg'),
              child: Icon(
                Icons.tune,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            top: context.h * 0.419,
            left: context.h * 0.02,
            right: context.h * 0.338,
            child: buttons(context: context, text: 'places').onClick(
              () {},
            ),
          ),
          Positioned(
            top: context.h*0.454,
            left: 0.0,
            right: 0.0,
            bottom: context.h*0.2,
            child: Container(
              height: context.h * 0.208,
              width: context.h * 0.290,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }

  Container buttons({required BuildContext context, required String text}) {
    return Container(
      alignment: Alignment.center,
      height: context.h * 0.018,
      width: context.h * 0.115,
      child: Text(
        text.tr(),
        style: TextStyle(color: ColorConst.splashtextcolor),
      ),
    );
  }

  Widget categories(
      {required BuildContext context,
      required String text,
      required int index}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5.0),
      height: context.h * 0.045,
      width: context.h * 0.07,
      decoration: BoxDecoration(
        color: currentsindex == index
            ? ColorConst.kPrimaryColor
            : Colors.transparent,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            RadiusConst.small,
          ),
          topRight: Radius.circular(
            RadiusConst.small,
          ),
        ),
      ),
      alignment: Alignment.center,
      child: Text(
        text.tr(),
        textAlign: TextAlign.center,
        style: TextStyle(color: ColorConst.textColor),
      ),
    ).onClick(() {
      currentsindex = index;
      setState(() {});
    });
  }
}
