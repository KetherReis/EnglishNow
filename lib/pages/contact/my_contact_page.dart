import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../utils/constants.dart';
import 'history_contact_page.dart';
import 'upcoming_contact_page.dart';

class MyContactPage extends StatefulWidget {
  @override
  _MyContactPageState createState() => _MyContactPageState();
}

class _MyContactPageState extends State<MyContactPage> {
  static const _kTabTextStyle = TextStyle(
    color: kColorPrimaryDark,
    fontSize: 16,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
  );

  static const _kUnselectedTabTextStyle = TextStyle(
    color: Colors.grey,
    fontSize: 16,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
  );

  final _kTabPages = [
    UpcomingContactPage(),
    HistoryContactPage(),
  ];

  final _kTabs = [
    Tab(
      text: 'upcoming'.tr(),
    ),
    Tab(
      text: 'history'.tr(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('my_appointments'.tr()),
        elevation: 0,
      ),
      body: DefaultTabController(
        length: _kTabs.length,
        child: Column(
          children: <Widget>[
            TabBar(
              indicatorColor: kColorPrimary,
              labelStyle: _kTabTextStyle,
              unselectedLabelStyle: _kUnselectedTabTextStyle,
              labelColor: kColorPrimary,
              unselectedLabelColor: Colors.grey,
              tabs: _kTabs,
            ),
            Expanded(
              child: TabBarView(
                children: _kTabPages,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
