import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:security_application/Custom%20Widgets/buttons.dart';
import 'package:security_application/Custom%20Widgets/text_field.dart';
import 'package:security_application/Utils/colors.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  bool isEditable = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Profile',
          style: poppinsBold,
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  isEditable = !isEditable;
                });
              },
              icon: const Icon(
                Icons.edit,
                color: Colors.black,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              MyTextField(
                labelText: 'Full Name',
                hintText: 'Williumson Roger',
                isEditable: isEditable,
              ),
              SizedBox(
                height: 5.h,
              ),
              MyTextField(
                labelText: 'Email',
                hintText: 'roger@gmail.com',
                isEditable: isEditable,
              ),
              SizedBox(
                height: 5.h,
              ),
              MyTextField(
                labelText: 'Phone Number',
                hintText: '+1 (906) 425 7897',
                isEditable: isEditable,
              ),
              SizedBox(
                height: 5.h,
              ),
              MyTextField(
                labelText: 'Charges',
                hintText: '\$15 per hour',
                isEditable: isEditable,
              ),
              SizedBox(
                height: 5.h,
              ),
              MyTextField(
                labelText: 'Age',
                hintText: '29 years',
                isEditable: isEditable,
              ),
              SizedBox(
                height: 5.h,
              ),
              MyTextField(
                labelText: 'Gender',
                hintText: 'Male',
                isEditable: isEditable,
              ),
              SizedBox(
                height: 5.h,
              ),
              MyTextField(
                labelText: 'Weight',
                hintText: '67 Kg',
                isEditable: isEditable,
              ),
              SizedBox(
                height: 5.h,
              ),
              MyTextField(
                labelText: 'Height',
                hintText: '5 feet, 3 Inches',
                isEditable: isEditable,
              ),
              SizedBox(
                height: 100.h,
              ),
              if (isEditable)
                CustomButton(
                    buttonWidth: 100.w,
                    buttonHeight: 40.h,
                    buttonFontWeight: FontWeight.bold,
                    buttonText: 'Save Changes',
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Changes Save')));
                      setState(() {
                        isEditable = false;
                      });
                    })
            ],
          ),
        ),
      ),
    );
  }
}
