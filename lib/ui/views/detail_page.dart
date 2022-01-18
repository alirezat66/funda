import 'package:flutter/material.dart';

class EstateDetailPage extends StatefulWidget {
  const EstateDetailPage({Key? key}) : super(key: key);

  @override
  _EstateDetailPageState createState() => _EstateDetailPageState();
}

class _EstateDetailPageState extends State<EstateDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (BuildContext contet, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 200.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    title: const Text("Collapsing Toolbar",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        )),
                    background: Image.network(
                      "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350",
                      fit: BoxFit.cover,
                    )),
              )
            ];
          },
          body: Center(
            child: Text("Sample Text"),
          )),
    );
  }
}
