import 'package:flutter/material.dart';
import 'package:funda_assignment/data/models/req/estate_detail_fake_requests.dart';
import 'package:funda_assignment/data/provider/estate_provider.dart';
import 'package:funda_assignment/ui/views/detail/estate_detail_error_page.dart';
import 'package:funda_assignment/ui/views/detail/estate_detail_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'estate_detail_loading_page.dart';

// the Estate detail screen handled pages that should be Show,
// the managment of error handling totaly depends on our design and our ux
// I decided to show error as seperate page with retry button because you mentioned that maybe ...
// a estate key deleted from backend, so I decided to make a page with button for retry another key
// so I seperate it. when user come to this page we call getDetailInfo. then based on state
// we decide which page should be presented. absolutly we can handle state in each of pages
// but I did'nt want do that in this step because I didn't have enough information from ux side
// I know, I know, I know that this page should have an argument because usualy we didn't use this page
// without previous list page, but it is an asignment so I put golden estate key.
class EstateDetailScreen extends ConsumerStatefulWidget {
  const EstateDetailScreen({Key? key}) : super(key: key);

  @override
  _EstateDetailScreenState createState() => _EstateDetailScreenState();
}

class _EstateDetailScreenState extends ConsumerState<EstateDetailScreen> {
  @override
  void initState() {
    super.initState();
    // add a callback after first widget built
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      _getDetailInfo();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(estateStateNotifireProvider);
    return Scaffold(
      body: state.when(
          loading: () => const EstateDetailLoadingPage(),
          loaded: (estate) => EstateDetailPage(estate: estate),
          failed: (error) => EstateDetailErrorPage(error, () {
                _getDetailInfo();
              })),
    );
  }

  // I create a fakerequest generator to get rent, buy and error and if one of the
  // items deleted buy system, we have others.
  void _getDetailInfo() {
    FakeRequest req = EstateDetailFakeRequests().getRandomRequest();
    ref.read(estateStateNotifireProvider.notifier).getEstateDetail(
          req.estateKey,
          req.type,
        );
  }
}
