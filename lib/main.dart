import 'package:flutter/material.dart';
import 'package:funda_assignment/data/provider/estate_provider.dart';
import 'package:funda_assignment/ui/rout/const_routes.dart';
import 'package:funda_assignment/ui/rout/general_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'data/app_error.dart';
import 'data/models/estate_detail/estate_detail.dart';

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

class MyHomePage extends ConsumerStatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends ConsumerState<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      _call();
    });
    // "ref" can be used in all life-cycles of a StatefulWidget.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white, body: _widgetContent(context, ref));
  }

  void _call() async {
    ref.watch(estateStateNotifireProvider.notifier).getEstateDetail(
        '78151742-172a-4e5d-b821-a3f5a648b615', EstateTypes.buy);
  }
}

Widget _widgetContent(BuildContext context, WidgetRef ref) {
  final state = ref.watch(estateStateNotifireProvider);

  return state.when(failed: (AppError error) {
    debugPrint('the error is : ${error.message}');
    return Center(
      child: TextButton(
          onPressed: () {},
          child: const Text(
            'Something is Wrong',
            style: TextStyle(fontSize: 24, color: Colors.blueAccent),
          )),
    );
  }, initial: () {
    return const Center(
      child: CircularProgressIndicator(
        backgroundColor: Colors.amber,
      ),
    );
  }, loaded: (EstateDetail estate) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'You have pushed the button this many times:',
          ),
          Text(
            'salam',
            style: Theme.of(context).textTheme.headline4,
          ),
        ],
      ),
    );
  }, loading: () {
    return const Center(
      child: CircularProgressIndicator(),
    );
  });
  // This trailing comma makes auto-formatting nicer for build methods.
}
