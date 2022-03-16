import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../components/friend_item.dart';
import '../../../components/round_icon_button.dart';
import '../../../model/friend.dart';
import '../../../routes/routes.dart';
import '../../../utils/constants.dart';

class ChooseDoctorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'friend'.tr(),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(Routes.filter);
            },
            icon: Icon(
              Icons.filter_list,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'choose_a_doctor'.tr(),
                style: Theme.of(context).textTheme.headline6!.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: kColorBlue,
              ),
              child: Row(
                children: <Widget>[
                  RoundIconButton(
                    onPressed: () {},
                    icon: Icons.person_pin,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'any_available_doctor'.tr(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListView.separated(
              separatorBuilder: (context, index) => Divider(),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: friends.length,
              itemBuilder: (context, index) {
                return FriendItem(
                  onTap: () {
                    Navigator.of(context).pushNamed(Routes.bookingStep3);
                  },
                  friend: friends[index],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
