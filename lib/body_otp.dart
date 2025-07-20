import 'package:flutter/material.dart';
import 'package:flutter_iti_1/home_page.dart';

class BodyOtp extends StatelessWidget {
  const BodyOtp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'ادخل رمز التحقق OTP',
          style: TextStyle(
            fontSize: 24,
            color: const Color.fromARGB(255, 250, 249, 249),
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Text(
          'لقد ارسلنا الكود الخاص بك الي 000*****010.',
          style: TextStyle(
            fontSize: 16,
            color: const Color.fromARGB(255, 250, 249, 249),
          ),
        ),
        SizedBox(height: 10),
        Text(
          'سينتهي صلاحية الرمز في 00:59',
          style: TextStyle(
            fontSize: 16,
            color: const Color.fromARGB(255, 250, 249, 249),
          ),
        ),
        SizedBox(height: 10),
         Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildBox(),
                      _buildBox(),
                      _buildBox(),
                      _buildBox(),
                      _buildBox(),
                      _buildBox(),
                    ],
                  ),
        SizedBox(height: 30),
        ElevatedButton(
                    onPressed: () => _navigateToNext(context),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      'تأكيد',
                      style: TextStyle(color: Colors.purple, fontSize: 18),
                    ),
                  ),
      ],
    );
  }
  Widget _buildBox() {
    return SizedBox(
      width: 45,
      height: 50,
      child: TextField(
        textAlign: TextAlign.center,
        maxLength: 1,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          counterText: '',
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
void _navigateToNext(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const homePage()),
    );
  }
