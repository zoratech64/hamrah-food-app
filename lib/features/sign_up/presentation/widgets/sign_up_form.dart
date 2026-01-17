import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hamrah_food_app/core/constants/reg_exp_constants.dart';
import 'package:hamrah_food_app/core/constants/size_constants.dart';
import 'package:hamrah_food_app/core/widgets/text_fields/custom_text_field.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      // key: signInWithEmailNotifier.formKey,
      child: Column(
        children: <Widget>[
          CustomTextField(
            // controller: signInWithEmailNotifier.emailController,
            controller: TextEditingController(),
            labelText: 'Email', // Tr
            hintText: 'example@gmail.com',
            keyboardType: TextInputType.emailAddress,
            // onSubmitted: (String value) =>
            //     signInWithEmailNotifier.signInWithEmail(),
            validator: (String value) {
              if (!RegExpConstants.instance.email.hasMatch(value)) {
                return 'Please enter a valid email!'; // Tr
              }

              return null;
            },
          ),
          SizeConstants.instance.spacingSmall.verticalSpace,
          CustomTextField(
            // controller: signInWithEmailNotifier.passwordController,
            controller: TextEditingController(),
            labelText: 'Password', // Tr
            obscureText: true,
            validator: (String value) {
              if (value.length < 6) {
                return 'Password must be at least 6 characters!'; // Tr
              }

              return null;
            },
          ),
        ],
      ),
    );
  }
}
