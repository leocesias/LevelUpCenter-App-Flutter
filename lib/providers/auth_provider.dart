import 'package:flutter/cupertino.dart';
import 'package:game_mentor/screens/layouts/admin_layout.dart';
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
  bool isAdmin = false;

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
    bool? admin = prefs.getBool('admin');

    setState(() {
      isAuthenticated = token != null; // Update the authentication status
      isAdmin = admin!;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Return either the authenticated content or the login page
    if (isAuthenticated) {
      return isAdmin ? const AdminLayout() : const NavbarCombinedScreen();
    }
    return const LoginPage();
  }
}
