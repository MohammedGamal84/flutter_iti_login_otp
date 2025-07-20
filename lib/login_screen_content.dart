import 'package:flutter/material.dart';
import 'package:flutter_iti_1/app_colors.dart';
import 'package:flutter_iti_1/app_strings.dart';
import 'package:flutter_iti_1/forget_password_row.dart';
import 'package:flutter_iti_1/otp_page.dart';


class LoginScreenConente extends StatelessWidget {
  const LoginScreenConente({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(AppStrings.loginScreenWelcomeText
            , style:
             TextStyle(fontSize: 24, color: const Color.fromARGB(255, 250, 249, 249), fontWeight: FontWeight.bold)
            ),
        SizedBox(height: 20),
        Text(AppStrings.loginScreenForgetPass
        , style:
             TextStyle(fontSize: 24, color: const Color.fromARGB(255, 250, 249, 249), fontWeight: FontWeight.bold)),
        SizedBox(height: 50),
        TextField(
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.person_outline),
            fillColor: AppColors.whiteApp,
            filled: true,
            hintText: AppStrings.loginScreenPhonenumberTextFiled,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),

        SizedBox(height: 20),
        TextField(
          decoration: InputDecoration(
             prefixIcon: const Icon(Icons.lock_outline),
            fillColor: AppColors.whiteApp,
            filled: true,
            hintText: AppStrings.loginScreenPasswordTextFiled,
            border: OutlineInputBorder(
               borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
        SizedBox(height: 20),
        Align(
           alignment: Alignment.centerLeft,
           child: TextButton(
            onPressed: () {},
           child: const Text(  'هل نسيت كلمة المرور؟',
               style: TextStyle(color: Colors.white),
        ),
        ),
       ),

        ElevatedButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) => const OtpPage()));
        }, child: Text('تسجيل الدخول')),

        Padding(
          padding: EdgeInsets.only(top: 15),
          child: ForgetPasswordRow(
            firstWhiteText: 'إنشاء حساب ',
            secoednBlcakText: 'ليس لديك حساب؟',
          ),
        ),
      ],
    );
  }
}