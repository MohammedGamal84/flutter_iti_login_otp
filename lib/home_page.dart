import 'package:flutter/material.dart';
import 'package:flutter_iti_1/app_colors.dart';
import 'package:flutter_iti_1/login_screen.dart';

// ignore: camel_case_types
class homePage  extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: AppColors.whiteApp,
     body: Column(
        children: [
          const SizedBox(height: 80),
          const Text(
            'دعم وتمكين لمستقبل\nأفضل لفئاتنا الخاصة',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22,
              color: Colors.pink,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(
                    'images/child.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 30, left: 30, right: 30),
                    child: SizedBox(
                      width: double.infinity,
                      height: 55,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (_) => const LoginScreen()));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFE91E63),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child: const Text(
                          'دعنا نبدء',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}