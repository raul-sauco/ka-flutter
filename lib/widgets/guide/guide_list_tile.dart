import 'package:flutter/material.dart';
import 'package:global_configuration/global_configuration.dart';

import '../../models/guide.dart';
import '../utils/phone_dialer.dart';

/// Draw one guide's details as part of a list.
class GuideListTile extends StatelessWidget {
  final Guide guide;
  GuideListTile({@required this.guide});

  @override
  Widget build(BuildContext context) {
    String url = GlobalConfiguration().get('avatarUrl') + '/${guide.avatar}';
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(url),
        ),
        title: Text(guide.nickname),
        subtitle: Text(guide.realname),
        trailing: PhoneDialer(phone: guide.phone),
      ),
    );
  }
}
