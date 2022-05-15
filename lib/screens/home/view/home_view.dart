import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelapp/core/extensions/context_extension.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:travelapp/screens/home/cubit/home_cubit.dart';
import 'package:travelapp/screens/home/state/home_state.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  String hint = 'Language';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Easy Localization'),
      ),
      body: BlocConsumer<HomeCubit, HomeState>(
        builder: (context, state) {
          return Container(
            height: context.h,
            width: context.w,
            alignment: Alignment.center,
            child: Column(
              children: [
                Expanded(
                    child: Column(
                  children: [
                    Text(
                      'hello'.tr(),
                    ),
                  ],
                )),
                Expanded(
                  child: DropdownButton(
                    hint: Text(
                      hint.toString().toUpperCase(),
                    ),
                    items: const [
                      DropdownMenuItem(
                        value: 'uz',
                        child: Text('Uz'),
                      ),
                      DropdownMenuItem(
                        value: 'en',
                        child: Text('Eng'),
                      )
                    ],
                    onChanged: (value) {
                      context
                          .read<HomeCubit>()
                          .changelang(v: value.toString(), context: context);
                    },
                  ),
                  
                ),
              ],
            ),
          );
        },
        listener: (context, state) {},
      ),
    );
  }
}
