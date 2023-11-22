import 'package:flutter/material.dart';
import 'package:game_mentor/config/theme/app_colors.dart';
import 'package:game_mentor/screens/navbar/navbarsCombinedScreen.dart';
import 'package:game_mentor/services/auth_service.dart';
import 'package:game_mentor/widgets/login/text_input.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _registerScreenState();
}

class _registerScreenState extends State<RegisterScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  bool _acceptTerms = false;

  Future<dynamic> _register() async {
    try {
      final response = await AuthService.register(
        _usernameController.text,
        _passwordController.text,
        _firstNameController.text,
        _lastNameController.text,
      );
      if (response.statusCode == 201) {
        final login = await AuthService.login(
          _usernameController.text,
          _passwordController.text,
        );

        if (mounted && login.statusCode == 200) {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
                builder: (context) => const NavbarCombinedScreen()),
          );
        }
      }
    } catch (ex) {
      print(ex);
    }

    // if (response['success']) {
    //   Navigator.pushNamed(context, '/login');
    // } else {
    //   ScaffoldMessenger.of(context).showSnackBar(
    //     SnackBar(
    //       content: Text(response['message']),
    //       backgroundColor: Colors.red,
    //     ),
    //   );
    // }
  }

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
              const Icon(
                Icons.person,
                size: 100,
              ),
              const SizedBox(height: 30),
              Text(
                'Create an account',
                style: TextStyle(color: Colors.grey[700], fontSize: 16),
              ),
              const SizedBox(height: 20),
              // two inputs in a row with a small gap between
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 22.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: TextInput(
                        controller: _firstNameController,
                        hintText: 'First Name',
                        padding: 5,
                      ),
                    ),
                    Expanded(
                      child: TextInput(
                          controller: _lastNameController,
                          hintText: 'Last Name',
                          padding: 5),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              TextInput(controller: _usernameController, hintText: 'Username'),
              const SizedBox(height: 10),
              const SizedBox(height: 10),
              TextInput(
                controller: _passwordController,
                hintText: 'Contraseña',
                obscureText: true,
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          value: _acceptTerms,
                          onChanged: (value) {
                            setState(() {
                              _acceptTerms = value!;
                            });
                          },
                        ),
                        Text(
                          'I accept all the Privacy Policy and Terms.',
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              GestureDetector(
                onTap: _acceptTerms ? _register : null,
                child: Container(
                  padding: const EdgeInsets.all(25),
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                    color: _acceptTerms
                        ? AppColors.secondaryColor
                        : Colors.grey[300],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Center(
                    child: Text(
                      "SIGN UP",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
