import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../components/study_tip_item.dart';
import '../../../model/level_category.dart';
import '../../../routes/routes.dart';

class HealthConcernPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'book_an_appointment'.tr(),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
            ),
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      'choose_health_concern'.tr(),
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                            fontWeight: FontWeight.w700,
                          ),
                    ),
                  ),
                  StaggeredGridView.countBuilder(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    crossAxisCount: 4,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: healthCategories.length,
                    staggeredTileBuilder: (int index) => StaggeredTile.fit(2),
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    itemBuilder: (context, index) {
                      return StudyTipItem(
                        experienceCategory: healthCategories[index],
                        onTap: () {
                          Navigator.of(context).pushNamed(Routes.bookingStep2);
                        },
                      );
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
