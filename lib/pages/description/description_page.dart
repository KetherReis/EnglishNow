import 'package:flutter/material.dart';

import '../../components/custom_profile_item.dart';
import '../../routes/routes.dart';

class DescriptionPage extends StatefulWidget {
  @override
  _DescriptionPageState createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage>
    with AutomaticKeepAliveClientMixin<DescriptionPage> {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CustomProfileItem(
              onTap: () {
                Navigator.of(context).pushNamed(Routes.prescriptionDetail);
              },
              title: 'Study',
              subtitle: 'Study',
              subtitle2: 'Study at 14/02/2022',
              buttonTitle: 'See Study',
              imagePath: 'assets/images/icon_medical_recipe.png',
            ),
            SizedBox(
              height: 20,
            ),
            CustomProfileItem(
              onTap: () {},
              title: 'Study Recipe',
              subtitle: 'Study',
              subtitle2: 'Studyat 14/02/2019',
              buttonTitle: 'See Study',
              imagePath: 'assets/images/icon_medical_recipe.png',
            ),
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
