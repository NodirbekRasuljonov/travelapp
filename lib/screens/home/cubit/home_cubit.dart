import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelapp/screens/home/state/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitialState());

  void changelang({required String v, required BuildContext context}) {
    if (v == 'uz') {
      context. locale = const Locale('uz', 'UZ');
      emit(HomeInitialState());
    } else if (v == 'en') {
      context.locale = const Locale('en', 'EN');
      emit(HomeInitialState());
    }
  }
}
