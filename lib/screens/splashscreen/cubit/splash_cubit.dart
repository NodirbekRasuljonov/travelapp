import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelapp/screens/splashscreen/state/splash_state.dart';

class SplashCubit extends Cubit<SplashState>{
  SplashCubit():super(SplashInitialState(),);



  void changelang({required String v, required BuildContext context,required String hint}) {
    if (v == 'es') {
      context. locale = const Locale('es', 'ES');
      hint=v.toUpperCase();
      emit(SplashInitialState());
    } else if (v == 'en') {
      context.locale = const Locale('en', 'EN');
      emit(SplashInitialState());
    }
  }



}