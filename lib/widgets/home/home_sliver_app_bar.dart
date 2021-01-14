import 'package:flutter/material.dart';

/// HomePage SliverAppBar with background image.
class HomeSliverAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Nice SliverAppBar example here:
    // https://github.com/FcoJavierSG/flutter_sliverappbar_example
    return SliverAppBar(
      title: Text('Home'),
      // Experimenting with the UX hiding the AppBar.
      // pinned: true,
      flexibleSpace: FlexibleSpaceBar(
          stretchModes: [
            StretchMode.zoomBackground,
            StretchMode.blurBackground,
          ],
          background: Image(
            image: AssetImage('assets/images/XIS486MWGCBKLQ20HAO1.jpg'),
            fit: BoxFit.cover,
          )),
      expandedHeight: 300,
    );
  }
}
