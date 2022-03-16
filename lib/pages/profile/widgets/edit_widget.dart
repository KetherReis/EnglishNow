import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../../components/text_form_field.dart';
import '../../../utils/constants.dart';

class EditWidget extends StatefulWidget {
  @override
  _EditWidgetState createState() => _EditWidgetState();
}

class _EditWidgetState extends State<EditWidget> {
  final ImagePicker _picker = ImagePicker();

  var _selectedGender = 'male'.tr();

  var _selectedExperienceGroup = 'Sem experiência';
  var _genderItems = <String>['male'.tr(), 'female'.tr()];
  var _experienceItems = <String>[
    'Sem experiência',
    'Iniciante',
    'Intermediário',
    'Avançado'
  ];
  var _maritalItems = <String>['single'.tr(), 'married'.tr()];

  var _birthDate = '01/01/2000';

  late List<DropdownMenuItem<String>> _dropDownGender;
  late List<DropdownMenuItem<String>> _dropDownExperience;

  File? _image;

  Future _getImage(ImageSource imageSource) async {
    PickedFile? _imageFile;
    _imageFile = await _picker.getImage(source: imageSource);
    if (_imageFile != null) {
      setState(() {
        _image = File(_imageFile!.path);
      });
    }
    //uploadPic();
  }

  _initDropDowns() {
    _dropDownGender = _genderItems
        .map((String value) => DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            ))
        .toList();

    _dropDownExperience = _experienceItems
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

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 25),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: GestureDetector(
                onTap: () {
                  _openBottomSheet(context);
                },
                child: _image == null
                    ? CircleAvatar(
                        radius: 100,
                        backgroundColor: Colors.grey,
                        //backgroundImage: NetworkImage(avatarUrl),
                      )
                    : CircleAvatar(
                        radius: 100,
                        backgroundImage: FileImage(_image!),
                      ),
              ),
            ),
            Center(
              child: TextButton(
                onPressed: () {
                  _openBottomSheet(context);
                },
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)),
                ),
                // shape: RoundedRectangleBorder(
                //     borderRadius: BorderRadius.circular(4)),
                child: Text(
                  'change_avatar'.tr(),
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'first_name_dot'.tr(),
              style: kInputTextStyle,
            ),
            CustomTextFormField(
              hintText: 'Usuário',
              validator: (value) =>
                  value!.isEmpty ? 'Please insert a valid first name' : null,
            ),
            SizedBox(height: 15),
            Text(
              'last_name_dot'.tr(),
              style: kInputTextStyle,
            ),
            CustomTextFormField(
              hintText: 'Teste',
              validator: (value) =>
                  value!.isEmpty ? 'Please insert a valid last name' : null,
            ),
            SizedBox(height: 15),
            Text(
              'contact_number_dot'.tr(),
              style: kInputTextStyle,
            ),
            CustomTextFormField(
              keyboardType: TextInputType.phone,
              hintText: '(44) 98817-5773',
            ),
            SizedBox(height: 15),
            Text(
              'email_dot'.tr(),
              style: kInputTextStyle,
            ),
            CustomTextFormField(
              hintText: 'admin@englishnow.com.br',
              enabled: false,
            ),
            SizedBox(height: 15),
            Text(
              'gender_dot'.tr(),
              style: kInputTextStyle,
            ),
            DropdownButton(
              isExpanded: true,
              value: _selectedGender,
              //hint: ,
              onChanged: (String? value) {
                setState(() {
                  _selectedGender = value!;
                });
              },
              items: _dropDownGender,
            ),
            SizedBox(height: 15),
            Text(
              'date_of_birth_dot'.tr(),
              style: kInputTextStyle,
            ),
            ListTile(
              contentPadding: EdgeInsets.all(0),
              title: Text(_birthDate),
              onTap: () {
                showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1900),
                  lastDate: DateTime.now(),
                ).then((DateTime? value) {
                  if (value != null) {
                    setState(() {
                      _birthDate = value.toString();
                    });
                  }
                });
              },
            ),
            SizedBox(height: 15),
            Text(
              'add_experience_level'.tr(),
              style: kInputTextStyle,
            ),
            DropdownButton(
              isExpanded: true,
              value: _selectedExperienceGroup,
              //hint: ,
              onChanged: (String? value) {
                setState(() {
                  _selectedExperienceGroup = value!;
                });
              },
              items: _dropDownExperience,
            ),
            SizedBox(height: 15),
            Text(
              'marital_status_dot'.tr(),
              style: kInputTextStyle,
            ),
            Text(
              'password'.tr(),
              style: kInputTextStyle,
            ),
            SizedBox(height: 15),
            Text(
              'confirm_new_password'.tr(),
              style: kInputTextStyle,
            ),
          ],
        ),
      ),
    );
  }

  _openBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          ),
        ),
        builder: (BuildContext context) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: Icon(
                  Icons.camera,
                  size: 20,
                ),
                title: Text(
                  'take_a_photo'.tr(),
                  style: TextStyle(
                    color: Color(0xff4a4a4a),
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pop();
                  _getImage(ImageSource.camera);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.photo_library,
                  size: 20,
                ),
                title: Text(
                  'choose_a_photo'.tr(),
                  style: TextStyle(
                    color: Color(0xff4a4a4a),
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pop();
                  _getImage(ImageSource.gallery);
                },
              ),
            ],
          );
        });
  }
}
