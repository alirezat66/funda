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
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
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
