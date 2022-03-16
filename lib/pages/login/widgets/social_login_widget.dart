import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class SocialLoginWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: Divider(
                color: Colors.grey,
                endIndent: 20,
              ),
            ),
            Text(
              'social_login'.tr(),
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Expanded(
              child: Divider(
                color: Colors.grey,
                indent: 20,
              ),
            ),
          ],
        ),
        SizedBox(height: 20.0),
        Container(
          height: 40.0,
          color: Colors.transparent,
          margin: const EdgeInsets.all(10.0),
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.black,
                    style: BorderStyle.solid,
                    width: 0.5),
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(10.0)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child:
                  ImageIcon(AssetImage('assets/images/icon_google.png'),
                      color: Colors.red),
                ),
                SizedBox(width: 10.0),
                Center(
                  child: Text('Sign in with Google',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat')),
                )
              ],
            ),
          ),
        ),
        Container(
          height: 40.0,
          color: Colors.transparent,
          margin: const EdgeInsets.all(10.0),
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.black,
                    style: BorderStyle.solid,
                    width: 0.5),
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(10.0)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child:
                  ImageIcon(AssetImage('assets/images/icon_apple.png'),
                      color: Colors.black),
                ),
                SizedBox(width: 10.0),
                Center(
                  child: Text('Sign in with Apple',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat')),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
