import 'package:flutter/material.dart';
import 'package:funda_assignment/ui/rout/const_routes.dart';
import 'package:funda_assignment/ui/rout/general_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';


void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends HookConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Funda',
      theme: ThemeData(
        colorScheme: const ColorScheme(
          primary: Color(0xffF7A102),
          background: Colors.white,
          brightness: Brightness.light,
          error: Color(0xffFF266F),
          onBackground: Colors.white,
          onError: Colors.white,
          onPrimary: Colors.white,
          onSecondary: Colors.white,
          onSurface: Colors.white,
          primaryVariant: Colors.white,
          secondary: Color(0xff0271B3),
          secondaryVariant: Color(0xffF7A102),
          surface: Colors.white,
        ),
        scaffoldBackgroundColor: Colors.white,
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            primary: const Color(0xFF0271B3),
            onSurface: const Color(0xff949494),
            textStyle: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            elevation: 2,
            onSurface: Colors.orange,
            padding: const EdgeInsets.symmetric(
              horizontal: 25,
              vertical: 14,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                2,
              ),
            ),
            textStyle: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ),
        textTheme: const TextTheme(
          headline5: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Color(0xff585858),
          ),
          headline6: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Color(0xff585858),
          ),
          bodyText1: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color(0xff585858),
              height: 1.6),
          bodyText2: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Color(0xffB4B4B4),
          ),
        ),
        fontFamily: 'roboto',
      ),
      routes: GeneralRouter.pages,
      initialRoute: FundaRoute.detailPafe,
    );
  }
}
