import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelapp/core/constants/color_const.dart';
import 'package:travelapp/core/constants/radius_const.dart';
import 'package:travelapp/core/constants/size_const.dart';
import 'package:travelapp/core/extensions/context_extension.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:travelapp/screens/splashscreen/cubit/splash_cubit.dart';

class SplashView extends StatelessWidget {
  SplashView({Key? key}) : super(key: key);

  String hint = 'Lang';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: context.h,
        width: context.w,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/images/splashscreen.png',
            ),
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: context.h * 0.052,
              left: context.h * 0.038,
              right: context.h * 0.038,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 3,
                    width: 100,
                    color: ColorConst.splashtextcolor.withOpacity(0.5),
                  ),
                  Container(
                    height: 3,
                    width: 100,
                    color: ColorConst.kPrimaryColor,
                  ),
                  Container(
                    height: 3,
                    width: 100,
                    color: ColorConst.splashtextcolor.withOpacity(0.5),
                  )
                ],
              ),
            ),
            Positioned(
              top: context.h * 0.092,
              left: context.h * 0.038,
              right: context.h * 0.052,
              bottom: context.h * 0.754,
              child: Text(
                'lets'.tr(),
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 32.0,
                  color: ColorConst.splashtextcolor,
                ),
              ),
            ),
            Positioned(
              top: context.h * 0.092,
              right: context.h * 0.01,
              child: Container(
                height: context.h * 0.050,
                width: context.w * 0.17,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: ColorConst.kPrimaryColor.withOpacity(0.7),
                ),
                child: DropdownButton(
                  itemHeight: 50.0,
                  alignment: Alignment.center,
                  dropdownColor: ColorConst.kPrimaryColor,
                  hint: Text(
                    hint,
                    style: TextStyle(
                      color: ColorConst.textColor,
                    ),
                  ),
                  menuMaxHeight: 100.0,
                  borderRadius: BorderRadius.circular(RadiusConst.medium),
                  items: const [
                    DropdownMenuItem(
                      alignment: Alignment.center,
                      value: 'en',
                      child: Text('EN'),
                    ),
                    DropdownMenuItem(
                      alignment: Alignment.center,
                      value: 'es',
                      child: Text('ES'),
                    ),
                  ],
                  onChanged: (value) {
                    context.read<SplashCubit>().changelang(
                          v: value.toString(),
                          context: context,
                          hint: hint,
                        );
                  },
                ),
              ),
            ),
            Positioned(
              bottom: context.h * 0.042,
              left: context.h * 0.038,
              right: context.h * 0.05,
              top: context.h * 0.88,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    '/homeview',
                    (route) => false,
                  );
                },
                child: Text(
                  'getstarted'.tr(),
                  style: TextStyle(
                      fontSize: SizeConst.small, color: ColorConst.textColor),
                ),
                style: ElevatedButton.styleFrom(
                  primary: ColorConst.kPrimaryColor,
                  fixedSize: Size(
                    context.w * 0.353,
                    context.h * 0.055,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
