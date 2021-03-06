import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../model/level_category.dart';

class StudyTipItem extends StatelessWidget {
  final LevelCategory experienceCategory;
  final void Function() onTap;

  const StudyTipItem({
    Key? key,
    required this.experienceCategory,
    required this.onTap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(4),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: Row(
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.grey[300],
                backgroundImage: AssetImage(experienceCategory.imagePath!),
                radius: 25,
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Text(
                  experienceCategory.name!.tr() + '\n',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
