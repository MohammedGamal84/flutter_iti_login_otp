import 'package:flutter/material.dart';
import 'package:flutter_iti_1/app_colors.dart';
import 'package:flutter_iti_1/body_otp.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: AppColors.whiteApp,

      body: Align(
        alignment: Alignment.bottomCenter,

        child: Container(
          height: 400,
          decoration: BoxDecoration(
            color: AppColors.mainColor,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          child: BodyOtp(),
        ),

      ),
      
    );
  }
}
  
  
