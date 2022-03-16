import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../components/call_friend_list_item.dart';
import '../../model/friend.dart';
import '../../routes/routes.dart';
import 'widgets/widgets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
  const HomePage({Key? key}) : super(key: key);
}

class _HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin<HomePage> {
  final bool _noAppoints = false;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 60,
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      child: Image.asset(
                        'assets/images/user_main.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '${'Seja'.tr()} Bem-Vindo,',
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                              fontWeight: FontWeight.w400,
                            ),
                      ),
                      Text(
                        'how_are_you_today'.tr(),
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontFamily: 'NunitoSans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            _noAppoints
                ? NoAppointmentsWidget()
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          children: <Widget>[
                            SectionHeaderWidget(
                              title: 'next_appointment'.tr(),
                            ),
                            MyResumeWidget(),
                            SectionHeaderWidget(
                              title: 'doctors_you_have_visited'.tr(),
                              onPressed: () => Navigator.of(context)
                                  .pushNamed(Routes.myDoctors),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 160,
                        child: ListView.separated(
                          separatorBuilder: (context, index) => SizedBox(
                            width: 15,
                          ),
                          itemCount: 4,
                          scrollDirection: Axis.horizontal,
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          itemBuilder: (context, index) {
                            return CallFriendListItem(
                              friend: friends[index],
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SectionHeaderWidget(
                              title: 'your_prescriptions'.tr(),
                              onPressed: () {},
                            ),
                            TestAndDescriptionCardWidget(
                              title: 'Ler e Escrever ${'recipe'.tr()}',
                              subtitle: '${'given_by'.tr()} Equipe English Now',
                              image: 'study_1.png',
                            ),
                            //test results
                            SectionHeaderWidget(
                              title: 'test_results'.tr(),
                              onPressed: () {},
                            ),
                            TestAndDescriptionCardWidget(
                              title: 'A importância da leitura',
                              subtitle: 'Veja esse artigo para os estudos',
                              image: 'icon_medical_check_up.png',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
