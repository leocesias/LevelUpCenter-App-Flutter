import 'package:flutter/material.dart';
import 'package:game_mentor/widgets/login/text_input.dart';
import 'package:game_mentor/config/theme/app_colors.dart';
import 'package:game_mentor/providers/auth_provider.dart';
import 'package:google_fonts/google_fonts.dart';


class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF1F9EE),
        body: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 10),
                  // Logo
                  Image.asset(
                    'assets/icon/logo.png',
                    width: 200,
                    height: 200,
                  ),
                  const SizedBox(height: 30),
                  Text(
                    'Master your game',
                    style: GoogleFonts.robotoMono(color: AppColors.primaryColor, fontSize: 30),
                  ),
                  const SizedBox(height: 30),
                  Container(
                    constraints: BoxConstraints(maxWidth: 300),
                    child: Text(
                      'Complete at the highest level and learn from the best',
                      style: GoogleFonts.robotoMono(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 70),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AuthProvider()),
                      );
                    },
                    child: Container(
                      width: 300,
                      height: 75,
                      decoration: BoxDecoration(
                        color: AppColors.secondaryColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          'GET STARTED',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )));
  }
}
