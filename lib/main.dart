import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelapp/routes/my_routes.dart';
import 'package:travelapp/screens/home/cubit/home_cubit.dart';
import 'package:travelapp/screens/splashscreen/cubit/splash_cubit.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => HomeCubit(),
          ),
          BlocProvider(
            create: (contex) => SplashCubit(),
          ),
        ],
        child: const MyApp(),
      ),
      supportedLocales: const [
        Locale('en', 'EN'),
        Locale('es', 'ES'),
      ],
      fallbackLocale: Locale('en', 'EN'),
      path: "assets/lang",
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyRoutes myRoutes = MyRoutes();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: ThemeData.light(),
      onGenerateRoute: myRoutes.onGenerateRoute,
      initialRoute: '/splashscreen',
    );
  }
}
