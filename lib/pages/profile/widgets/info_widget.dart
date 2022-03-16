import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'profile_info_tile.dart';

class InfoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ListTile(
          title: Text(
            'name_dot'.tr(),
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          subtitle: Text(
            'Usuário Teste',
            style: Theme.of(context).textTheme.subtitle2,
          ),
          trailing: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.grey,
            //backgroundImage: NetworkImage(avatarUrl),
          ),
        ),
        Divider(
          height: 0.5,
          color: Colors.grey[200],
          indent: 15,
          endIndent: 15,
        ),
        ProfileInfoTile(
          title: 'contact_number'.tr(),
          trailing: '(44) 98817-5773',
          hint: 'phone_add' .tr(),
        ),
        ProfileInfoTile(
          title: 'email'.tr(),
          trailing: 'admin@englishnow.com.br',
          hint: 'add_email'.tr(),
        ),
        ProfileInfoTile(
          title: 'gender'.tr(),
          trailing: 'male'.tr(),
          hint: 'add_gender'.tr(),
        ),
        ProfileInfoTile(
          title: 'date_of_birth'.tr(),
          trailing: null,
          hint: 'dd mm yyyy',
        ),
        ProfileInfoTile(
          title: 'experience_level'.tr(),
          trailing: 'Intermediário',
          hint: 'add_experience_level'.tr(),
        ),
        ProfileInfoTile(
          title: 'marital_status'.tr(),
          trailing: null,
          hint: 'add_marital_status'.tr(),
        ),
        ProfileInfoTile(
          title: 'password'.tr(),
          trailing: null,
          hint: 'add_password'.tr(),
        ),
        ProfileInfoTile(
          title: 'confirm_password'.tr(),
          trailing: null,
          hint: 'confirm_new_password'.tr(),
        ),
        ProfileInfoTile(
          title: 'preference'.tr(),
          hint: 'add_preference'.tr(),
        ),
        ProfileInfoTile(
          title: 'location'.tr(),
          hint: 'add_location'.tr(),
        ),
      ],
    );
  }
}
