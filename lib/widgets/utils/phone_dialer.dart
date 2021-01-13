import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

/// Draw a Widget that allows the user to make a phone call.
class PhoneDialer extends StatelessWidget {
  final String phone;
  PhoneDialer({@required this.phone});

  @override
  Widget build(BuildContext context) {
    bool enabled = phone != null && phone.trim() != '';
    return GestureDetector(
      child: SizedBox(
        height: 40.0,
        width: 40.0,
        child: Container(
          decoration: BoxDecoration(
            color: enabled ? Colors.green : Colors.red,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(blurRadius: 1.0),
            ],
          ),
          child: Icon(
            enabled ? Icons.phone_outlined : Icons.phone_disabled,
            color: Colors.white,
          ),
        ),
      ),
      onTap: () async {
        if (enabled) {
          var url = 'tel:$phone';
          if (await canLaunch(url)) {
            await launch(url);
          } else {
            print('Cannot launch $url');
          }
        }
      },
    );
  }
}
