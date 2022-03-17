import 'package:flutter/material.dart';

import '../../components/custom_profile_item.dart';
import '../../routes/routes.dart';

class VisitPage extends StatefulWidget {
  @override
  _VisitPageState createState() => _VisitPageState();
}

class _VisitPageState extends State<VisitPage>
    with AutomaticKeepAliveClientMixin<VisitPage> {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            VisitItem(
              child: CustomProfileItem(
                onTap: () {
                  Navigator.of(context).pushNamed(Routes.doctorProfile);
                },
                title: 'Carlos Borges',
                subtitle: 'Iniciante',
                buttonTitle: 'Ver Perfil',
                imagePath: 'assets/images/user_1.png',
              ),
            ),
            VisitItem(
              child: CustomProfileItem(
                onTap: () {},
                title: 'Helena',
                subtitle: 'Intermediário',
                buttonTitle: 'Ver Perfil',
                imagePath: 'assets/images/user_2.png',
              ),
            ),
            VisitItem(
              child: CustomProfileItem(
                onTap: () {},
                title: 'Alaor',
                subtitle: 'Nativo',
                buttonTitle: 'Ver Perfil',
                imagePath: 'assets/images/user_3.png',
              ),
            ),
          ],
        ),
      ),
    );
  }
  @override
  bool get wantKeepAlive => true;
}

class VisitItem extends StatelessWidget {
  final Widget child;

  const VisitItem(
      {Key? key, required this.child})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: child,
        ),
      ],
    );
  }
}
