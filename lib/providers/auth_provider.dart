import 'package:flutter/cupertino.dart';
import 'package:game_mentor/screens/login/login_screen.dart';
import 'package:game_mentor/screens/navbar/navbarsCombinedScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthProvider extends StatefulWidget {
  const AuthProvider({super.key});

  @override
  State<AuthProvider> createState() => _AuthProviderState();
}

class _AuthProviderState extends State<AuthProvider> {
  bool isAuthenticated = false; // Set initial authentication state

  @override
  void initState() {
    super.initState();
    // Check the authentication status when the widget is initialized
    checkAuthenticationStatus();
  }

  Future<void> checkAuthenticationStatus() async {
    // Implement your logic to check if the user is authenticated
    // For example, check if a token is stored locally
    // You might use SharedPreferences or another storage mechanism for this

    // Sample logic (replace with your actual logic)
    // For demonstration purposes, this assumes the token is stored in SharedPreferences
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');

    setState(() {
      isAuthenticated = token != null; // Update the authentication status
    });
  }

  @override
  Widget build(BuildContext context) {
    // Return either the authenticated content or the login page
    return isAuthenticated ? const NavbarCombinedScreen() : const LoginPage();
  }
}
