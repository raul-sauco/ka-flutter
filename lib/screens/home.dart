import 'package:flutter/material.dart';

import '../widgets/default_drawer.dart';
import '../widgets/home/home_main_content.dart';
import '../widgets/home/home_sliver_app_bar.dart';

/// Renders the home page of a logged in user.
class HomePage extends StatelessWidget {
  static const String id = '/home';

  HomePage({Key key}) : super(key: key);

  final String title = 'Home';

  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DefaultDrawer(currentPage: HomePage.id),
      body: CustomScrollView(
        slivers: [
          HomeSliverAppBar(),
          SliverFillRemaining(
            child: HomeMainContent(),
          )
        ],
      ),
    );
  }
}
