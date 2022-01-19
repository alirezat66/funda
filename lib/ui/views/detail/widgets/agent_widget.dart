import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AgentWidget extends StatelessWidget {
  final String agentName;
  final String agentPhone;
  const AgentWidget(
      {Key? key, required this.agentName, required this.agentPhone})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Container(
            color: Theme.of(context).colorScheme.primary,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Agent Contact Info',
                    style: Theme.of(context).textTheme.caption,
                  ),
                  Image.asset(
                    'images/map_pin_icon.png',
                    width: 30,
                    height: 30,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ),
          Container(
            color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    agentName.toUpperCase(),
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                          onPressed: () => launch("tel://$agentPhone"),
                          child: Text(agentPhone)))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
