import 'package:flutter/material.dart';
import 'package:funda_assignment/configuration/theme.dart';
import 'package:funda_assignment/ui/route/const_routes.dart';
import 'package:funda_assignment/ui/route/general_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

final brightnessProvider = StateProvider((_) => Brightness.light);

class MyApp extends HookConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final brightness = ref.watch(brightnessProvider.state);
    return MaterialApp(
      title: 'Funda',
      theme:
          brightness.state == Brightness.light ? lightThemData : darkThemeData,
      routes: GeneralRouter.pages,
      initialRoute: FundaRoute.detailScreen,
    );
  }
}
