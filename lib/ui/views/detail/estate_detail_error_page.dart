import 'package:flutter/material.dart';
import 'package:funda_assignment/data/app_error.dart';
import 'package:funda_assignment/ui/widgets/funda_app_bar.dart';

class EstateDetailErrorPage extends StatelessWidget {
  final AppError error;
  final VoidCallback onRetry;
  const EstateDetailErrorPage(this.error, this.onRetry, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FundaAppBar(),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(error.message, style: Theme.of(context).textTheme.bodyText1),
          const SizedBox(
            height: 16,
          ),
          TextButton(onPressed: onRetry, child: const Text('Retry'))
        ],
      )),
    );
  }
}
