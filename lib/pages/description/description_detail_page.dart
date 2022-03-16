import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../components/custom_recipe_item.dart';

class DescriptionDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
            ),
          )
        ],
        title: Text(
          'prescription_detail'.tr(),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CustomRecipeItem(
                title: 'Study',
                subTitle: 'Today',
                days: '7 ${'days'.tr()}',
                pills: '2 ${'pills'.tr()}',
              ),
              SizedBox(
                height: 20,
              ),
              CustomRecipeItem(
                title: 'Study',
                subTitle: 'Study',
                days: '7 ${'days'.tr()}',
                pills: '1 ${'pill'.tr()}',
              ),
              SizedBox(
                height: 20,
              ),
              CustomRecipeItem(
                title: 'Study',
                subTitle: 'Tomorrow',
                days: '3 ${'days'.tr()}',
                pills: '1 ${'pill'.tr()}',
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
