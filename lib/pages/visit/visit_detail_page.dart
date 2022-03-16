import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../components/custom_profile_item.dart';

class VisitDetailPage extends StatefulWidget {
  @override
  _VisitDetailPageState createState() => _VisitDetailPageState();
}

class _VisitDetailPageState extends State<VisitDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'visit_detail'.tr(),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Card(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Colors.transparent,
                            radius: 30,
                            child: Image.asset(
                              'assets/images/user_1.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Carlos Borges',
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle2!
                                      .copyWith(
                                        fontWeight: FontWeight.w700,
                                      ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  'Iniciante',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'NunitoSans',
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Divider(
                        height: 1,
                        color: Colors.grey[200],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.calendar_today,
                              color: Colors.grey[300],
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            Expanded(
                              child: Text(
                                'Thu. 17:00 - 14 February 2022',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.location_on,
                              color: Colors.grey[300],
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            Expanded(
                              child: Text(
                                'Moscow',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      'diagnosis'.tr(),
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                            fontWeight: FontWeight.w700,
                          ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.keyboard_arrow_up,
                    color: Theme.of(context).textTheme.headline6!.color,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Testint Now',
                style: Theme.of(context).textTheme.bodyText2,
              ),
              SizedBox(
                height: 20,
              ),
              CustomProfileItem(
                onTap: () {},
                title: 'physical_examination'.tr(),
                subtitle: '14/02/2022',
                buttonTitle: 'see_reports'.tr(),
                imagePath: 'assets/images/user_2.png',
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      'recommendation'.tr(),
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                            fontWeight: FontWeight.w700,
                          ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.keyboard_arrow_up,
                    color: Theme.of(context).textTheme.headline6!.color,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Testing Now',
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
