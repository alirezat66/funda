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
          secondary: Color(0xff5292C5),
          secondaryVariant: Color(0xff0271B3),
          surface: Colors.white,
        ),
        scaffoldBackgroundColor: Colors.white,
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            primary: const Color(0xFF0271B3),
            onSurface: const Color(0xff949494),
            textStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        dividerTheme: DividerThemeData(
            color: const Color(0xff5292C5).withOpacity(0.5), thickness: 0.5),
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
          headline2: TextStyle(
              fontSize: 24, fontWeight: FontWeight.w600, color: Colors.black),
          headline3: TextStyle(
              fontSize: 26, fontWeight: FontWeight.w600, color: Colors.black),
          headline4: TextStyle(
              fontSize: 19, fontWeight: FontWeight.w500, color: Colors.black38),
          headline5: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Color(0xff585858),
          ),
          headline6: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
          bodyText1: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.black87,
              height: 1.6),
          bodyText2: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Colors.black54,
          ),
          caption: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
          button: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Color(0xff0271B3),
          ),
        ),
        fontFamily: 'roboto',
      ),
      routes: GeneralRouter.pages,
      initialRoute: FundaRoute.detailScreen,
    );
  }
}
