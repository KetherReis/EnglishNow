import 'package:flutter/material.dart';

import '../../components/round_icon_button.dart';
import '../../data/pref_manager.dart';
import '../../routes/routes.dart';
import '../../utils/constants.dart';
import '../visit/visit_page.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}
class _ProfilePageState extends State<ProfilePage>
    with AutomaticKeepAliveClientMixin<ProfilePage> {
  final _kTabTextStyle = TextStyle(
    color: kColorBlue,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );
  final _kTabPages = [
    VisitPage(),
    VisitPage()
  ];
  @override
  Widget build(BuildContext context) {
    super.build(context);
    bool _isdark = Prefs.isDark();

    var _kTabs = [
      Tab(
        text: 'Próximo de Você',
      ),
      Container(
        child: Expanded(
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
            isExpanded: true,
          value: _selectedDistance,
          onChanged: (String? value) {
            setState(() {
              _selectedDistance = value ?? "";
            });
          },
          items: _dropDownDistance,
      ),
        ),
      ),
    )
    ];
    return new Scaffold(
      body: new Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(top: 50.0, left: 20),
          //color: Colors.white,
          child: Row(
            children: <Widget>[
              CircleAvatar(
                radius: 45,
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage(
                  'assets/images/user_5.png',
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Usuário Teste',
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'admin@englishnow.com.br',
                      style: TextStyle(
                        color: Colors.grey[350],
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '44988175773',
                      style: Theme.of(context)
                          .textTheme
                          .subtitle2!
                          .copyWith(fontSize: 12),
                    ),
                  ],
                ),
              ),
              RoundIconButton(
                onPressed: () =>
                    Navigator.of(context).pushNamed(Routes.editProfile),
                icon: Icons.edit,
                size: 40,
                color: kColorBlue,
                iconColor: Colors.white,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Expanded(
          child: DefaultTabController(
            length: _kTabs.length,
            child: Column(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: _isdark ? kColorDark : Color(0xfffbfcff),
                    border: Border(
                      top: BorderSide(
                        width: 1,
                        color: _isdark ? Colors.black87 : Colors.grey[200]!,
                      ),
                      bottom: BorderSide(
                        width: 1,
                        color: _isdark ? Colors.black87 : Colors.grey[200]!,
                      ),
                    ),
                  ),
                  child: TabBar(
                    indicatorColor: kColorBlue,
                    labelStyle: _kTabTextStyle,
                    unselectedLabelStyle:
                        _kTabTextStyle.copyWith(color: Colors.grey),
                    labelColor: kColorBlue,
                    unselectedLabelColor: Colors.grey,
                    tabs: _kTabs,
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    children: _kTabPages,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;

  late List<DropdownMenuItem<String>> _dropDownDistance;
  var _selectedDistance = 'Distance: 10km';
  var _distanceItems = <String>[
    'Distance: 10km',
    'Distance: 20km',
    'Distance: 30km',
    'Distance: 40km'
  ];
  _initDropDowns() {

    _dropDownDistance = _distanceItems
        .map((String value) => DropdownMenuItem<String>(
      value: value,
         child: Text(value),
    ))
        .toList();
  }
  @override
  void initState() {
    super.initState();
    _initDropDowns();
  }



}
