import 'package:flutter/material.dart';
import 'package:game_mentor/services/auth_service.dart';
import 'package:game_mentor/widgets/login/text_input.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:game_mentor/screens/login/register_screen.dart';
import 'package:game_mentor/config/theme/app_colors.dart';
import '../navbar/navbarsCombinedScreen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> _login() async {
    try {
      final response = await AuthService.login(
        _usernameController.text,
        _passwordController.text,
      );
      final Map<String, dynamic> responseData = response.data;

      print(responseData['token']);

      if (responseData.containsKey('token')) {
        final SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString('token', responseData['token']);

        LoginPage.navigatorKey.currentState!
            .pushReplacement(MaterialPageRoute(builder: (ctx) {
          return const NavbarCombinedScreen();
        }));
      }
    } catch (ex) {
      print(ex);
    }
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
              // Logo
              const Icon(
                Icons.lock,
                size: 100,
              ),
              const SizedBox(height: 30),
              Text(
                'Welcome Back',
                style: TextStyle(color: Colors.black, fontSize: 40),
              ),
              const SizedBox(height: 25),
              TextInput(controller: _usernameController, hintText: 'Username'),
              const SizedBox(height: 10),
              TextInput(
                  controller: _passwordController,
                  hintText: 'Password',
                  obscureText: true),
              const SizedBox(height: 10),
              // forgot password?
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              GestureDetector(
                onTap: _login,
                child: Container(
                    padding: const EdgeInsets.all(25),
                    margin: const EdgeInsets.symmetric(horizontal: 25),
                    decoration: BoxDecoration(
                      color: AppColors.secondaryColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Center(
                        child: Text("SIGN IN",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            )))),
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterScreen()),
                  );
                },
                child: Text(
                  'REGISTER',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        )));
  }
// class _LoginPageState extends State<LoginPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFFF1F9EE),
//       body: Stack(
//         fit: StackFit.expand,
//         children: <Widget>[
//           Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               const Text(
//                 'Welcome back',
//                 style: TextStyle(
//                   fontSize: 36.0,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               Form(
//                 child: Theme(
//                   data: ThemeData(
//                     brightness: Brightness.dark,
//                     primarySwatch: Colors.teal,
//                     inputDecorationTheme: const InputDecorationTheme(
//                       labelStyle: TextStyle(
//                         fontSize: 18.0,
//                         color: Colors.black,
//                       ),
//                     ),
//                   ),
//                   child: Container(
//                     padding: const EdgeInsets.all(70.0),
//                     child: Column(
//                       children: <Widget>[
//                         Container(
//                           padding: const EdgeInsets.symmetric(vertical: 10.0),
//                           child: TextFormField(
//                             decoration: InputDecoration(
//                               labelText: "Username",
//                               labelStyle: const TextStyle(
//                                   fontSize: 18.0, color: Colors.black),
//                               fillColor: Colors.black,
//                               focusedBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(25.0),
//                                 borderSide: const BorderSide(
//                                   color: Colors.black,
//                                 ),
//                               ),
//                               enabledBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(25.0),
//                                 borderSide: const BorderSide(
//                                   color: Colors.black,
//                                   width: 2.0,
//                                 ),
//                               ),
//                             ),
//                             keyboardType: TextInputType.emailAddress,
//                             style: const TextStyle(color: Colors.black),
//                           ),
//                         ),
//                         Container(
//                           padding: const EdgeInsets.symmetric(vertical: 10.0),
//                           child: TextFormField(
//                             decoration: InputDecoration(
//                               labelText: "Password",
//                               labelStyle: const TextStyle(
//                                   fontSize: 18.0, color: Colors.black),
//                               fillColor: Colors.black,
//                               focusedBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(25.0),
//                                 borderSide: const BorderSide(
//                                   color: Colors.black,
//                                 ),
//                               ),
//                               enabledBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(25.0),
//                                 borderSide: const BorderSide(
//                                   color: Colors.black,
//                                   width: 2.0,
//                                 ),
//                               ),
//                             ),
//                             keyboardType: TextInputType.text,
//                             obscureText: true,
//                             style: const TextStyle(
//                               color: Colors.black,
//                             ),
//                           ),
//                         ),
//                         const SizedBox(height: 20),
//                         Column(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           children: <Widget>[
//                             TextButton(
//                               onPressed: () {},
//                               child: const Text(
//                                 'Forgot Password?',
//                                 style: TextStyle(
//                                   fontSize: 18.0,
//                                   color: Colors.black,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               ElevatedButton(
//                 onPressed: () {},
//                 style: ElevatedButton.styleFrom(
//                   minimumSize: const Size(150, 50),
//                   backgroundColor: const Color(0xFFFFD33B),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(30.0),
//                   ),
//                 ),
//                 child: const Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
//                   child: Text(
//                     "Sign In",
//                     style: TextStyle(fontSize: 18),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: () {},
//                 style: ElevatedButton.styleFrom(
//                   minimumSize: const Size(150, 50),
//                   backgroundColor: const Color(0xFF284A76),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(30.0),
//                   ),
//                 ),
//                 child: const Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
//                   child: Text(
//                     "Sign Up",
//                     style: TextStyle(fontSize: 18, color: Colors.white),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
}
