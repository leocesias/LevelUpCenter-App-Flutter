
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileConfig extends StatefulWidget {
  const ProfileConfig({super.key});

  @override
  State<ProfileConfig> createState() => _ProfileConfigState();
}

/*
  unused appBar
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight + 60),
        child: Column(
          children: [
            AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              title: const Text('LevelUpCenter'),
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.home_filled, size: 30),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.notifications, size: 30),
                  onPressed: () {},
                ),
              ],
            )
          ],
        ),
      ),
 */

class _ProfileConfigState extends State<ProfileConfig> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Profile',
                      style: GoogleFonts.robotoMono(fontSize: 20),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.yellow[200]!,
                        ),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 16.0,
                          horizontal: 24.0,
                        ),
                        child: Text(
                          'Configuration',
                          style: GoogleFonts.robotoMono(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 10.0,
              ),
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.lightGreen.shade100,
                  ),
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 180,
                    child: Center(
                      child: Icon(
                        Icons.add_box,
                        size: 70,
                        color: Colors.pink,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          width: 140,
                          height: 140,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.transparent,
                          ),
                          child: Image.asset('assets/images/coach.png'),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 20), // Space between 'Image' and the next column
                  // Details of the team in a column
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Team details in individual rows
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            'Team',
                            style: GoogleFonts.robotoMono(fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            'Age',
                            style: GoogleFonts.robotoMono(fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            'Country',
                            style: GoogleFonts.robotoMono(fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            'Language',
                            style: GoogleFonts.robotoMono(fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            'Strength',
                            style: GoogleFonts.robotoMono(fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildIconButtonWithText('Price'),
                  _buildIconButtonWithText('Experiences'),
                  _buildIconButtonWithText('Videos'),
                  _buildIconButtonWithText('Channels'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIconButtonWithText(String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 15),
      child: ElevatedButton.icon(
        onPressed: () {
          // Handle button press
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
        ),
        icon: const Icon(Icons.add, color: Colors.pink),
        label: Text(text, style: const TextStyle(color: Colors.black)),
      ),
    );
  }
}


class FeedbackMailbox extends StatefulWidget {
  const FeedbackMailbox({super.key});


  @override
  State<FeedbackMailbox> createState() => _FeedbackMailboxState();
}

class _FeedbackMailboxState extends State<FeedbackMailbox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight + 60),
        child: Column(
          children: [
            AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              title: const Text('LevelUpCenter'),
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.home_filled, size: 30),
                  onPressed: () {
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.notifications, size: 30),
                  onPressed: () {
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: IconButton(
                    icon: const Icon(Icons.home, size: 45),
                    color: Colors.black,
                    onPressed: () {
                    },
                  ),
                ),
                Expanded(
                  child: IconButton(
                    icon: const Icon(Icons.people, size: 45),
                    color: Colors.black,
                    onPressed: () {
                    },
                  ),
                ),
                Expanded(
                  child: IconButton(
                    icon: const Icon(Icons.gamepad, size: 45),
                    color: Colors.black,
                    onPressed: () {
                    },
                  ),
                ),
                Expanded(
                  child: IconButton(
                    icon: const Icon(Icons.email, size: 45),
                    color: Colors.black,
                    onPressed: () {
                    },
                  ),
                ),
                Expanded(
                  child: IconButton(
                    icon: const Icon(Icons.person, size: 45),
                    color: Colors.black,
                    onPressed: () {
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Notifications',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          const Divider(thickness: 1, color: Colors.black),
          ListView.builder(
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const CircleAvatar(
                      backgroundImage: NetworkImage('imageUrl'),
                      radius: 25,
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        'Feedback Message $index',
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight + 60),
        child: Column(
          children: [
            AppBar(
              elevation: 0, // No shadow
              backgroundColor: Colors.transparent,
              title: const Text('LevelUpCenter'),
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.home_filled, size: 30),
                  onPressed: () {
                    // Handle market button press
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.notifications, size: 30),
                  onPressed: () {
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: IconButton(
                    icon: const Icon(Icons.home, size: 45),
                    color: Colors.black,
                    onPressed: () {
                    },
                  ),
                ),
                Expanded(
                  child: IconButton(
                    icon: const Icon(Icons.people, size: 45),
                    color: Colors.black,
                    onPressed: () {
                    },
                  ),
                ),
                Expanded(
                  child: IconButton(
                    icon: const Icon(Icons.gamepad, size: 45),
                    color: Colors.black,
                    onPressed: () {
                    },
                  ),
                ),
                Expanded(
                  child: IconButton(
                    icon: const Icon(Icons.email, size: 45),
                    color: Colors.black,
                    onPressed: () {
                    },
                  ),
                ),
                Expanded(
                  child: IconButton(
                    icon: const Icon(Icons.person, size: 45),
                    color: Colors.black,
                    onPressed: () {
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Notifications',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          const Divider(thickness: 1, color: Colors.black),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16.0),
              children: [
                const Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage('imageUrl'),
                      radius: 20,
                    ),
                    SizedBox(width: 10),
                    Text('John Doe • 2 hours ago'),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow),
                      Icon(Icons.star, color: Colors.yellow),
                      Icon(Icons.star, color: Colors.yellow),
                      Icon(Icons.star, color: Colors.yellow),
                      Icon(Icons.star, color: Colors.grey),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Text(
                    'Send Feedback:',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(color: Colors.black),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: 'Type your feedback here...',
                      border: InputBorder.none,
                    ),
                    maxLines: 3,
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

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight + 60),
        child: Column(
          children: [
            AppBar(
              elevation: 0, // No shadow
              backgroundColor: Colors.transparent,
              title: const Text('LevelUpCenter'),
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.home_filled, size: 30),
                  onPressed: () {
                    // Handle market button press
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.notifications, size: 30),
                  onPressed: () {
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: IconButton(
                    icon: const Icon(Icons.home, size: 45),
                    color: Colors.black,
                    onPressed: () {
                    },
                  ),
                ),
                Expanded(
                  child: IconButton(
                    icon: const Icon(Icons.people, size: 45),
                    color: Colors.black,
                    onPressed: () {
                    },
                  ),
                ),
                Expanded(
                  child: IconButton(
                    icon: const Icon(Icons.gamepad, size: 45),
                    color: Colors.black,
                    onPressed: () {
                    },
                  ),
                ),
                Expanded(
                  child: IconButton(
                    icon: const Icon(Icons.email, size: 45),
                    color: Colors.black,
                    onPressed: () {
                    },
                  ),
                ),
                Expanded(
                  child: IconButton(
                    icon: const Icon(Icons.person, size: 45),
                    color: Colors.black,
                    onPressed: () {
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Center(
        child: Align(
          alignment: Alignment.topCenter,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Padding(

                padding: EdgeInsets.only(top: 15, bottom: 5),
                child: Text(
                  'Profile',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),

              const Divider(thickness: 1, color: Colors.black),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Container(
                          width: 100,
                          height: 100,
                          color: Colors.blue,
                          child: const Center(
                            child: Text(
                              'No Image',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Name',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          'Age',
                          style: TextStyle(fontSize: 17),
                        ),
                        Text(
                          'Country',
                          style: TextStyle(fontSize: 17),
                        ),
                        Text(
                          'City',
                          style: TextStyle(fontSize: 17),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const Divider(thickness: 1, color: Colors.black),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  IconButton(
                    icon: const Icon(Icons.privacy_tip),

                    color: Colors.pinkAccent,
                    onPressed: () {},
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Privacy',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  IconButton(
                    icon: const Icon(Icons.account_circle),
                    color: Colors.pinkAccent,
                    onPressed: () {},
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Change Account',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  IconButton(
                    icon: const Icon(Icons.update),

                    color: Colors.pinkAccent,
                    onPressed: () {},
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'App Updates',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                ],
              ),
              const Divider(thickness: 1, color: Colors.black),
              const Padding(
                padding: EdgeInsets.only(left: 30, top: 15),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Your favorite game',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Container(
                            width: 100,
                            height: 100,
                            color: Colors.blue,
                            child: const Center(
                              child: Text(
                                'No Image',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Game',
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            'Genre',
                            style: TextStyle(fontSize: 17),
                          ),
                          Text(
                            'Coaches',
                            style: TextStyle(fontSize: 17),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class ColoredCheckbox extends StatefulWidget {
  final bool value;
  final ValueChanged<bool?>? onChanged;
  final Color fillColor;

  ColoredCheckbox({
    required this.value,
    required this.onChanged,
    required this.fillColor,
  });

  @override
  _ColoredCheckboxState createState() => _ColoredCheckboxState();
}

class _ColoredCheckboxState extends State<ColoredCheckbox> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (widget.onChanged != null) {
          widget.onChanged!(!widget.value);
        }
      },
      child: Container(
        decoration: BoxDecoration(
          color: widget.value ? widget.fillColor : Colors.transparent,
          border: Border.all(
            color: Colors.black, // Puedes cambiar esto al color que desees
            width: 2.0,
          ),
        ),
        width: 20.0,
        height: 20.0,
        child: widget.value
            ? Icon(
          Icons.check,
          size: 16.0,
          color: Colors.white,
        )
            : null,
      ),
    );
  }
}


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F9EE), // Color de fondo para la pantalla
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Reemplazar el logo de Flutter con el texto "Welcome back"
              Text(
                'Welcome back',
                style: TextStyle(
                  fontSize: 36.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Form(
                child: Theme(
                  data: ThemeData(
                    brightness: Brightness.dark,
                    primarySwatch: Colors.teal,
                    inputDecorationTheme: InputDecorationTheme(
                      labelStyle: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(70.0),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 10.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: "Username",
                              labelStyle: TextStyle(fontSize: 18.0, color: Colors.black),
                              fillColor: Colors.black,
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                borderSide: BorderSide(
                                  color: Colors.black,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 2.0,
                                ),
                              ),
                            ),
                            keyboardType: TextInputType.emailAddress,
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 10.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: "Password",
                              labelStyle: TextStyle(fontSize: 18.0, color: Colors.black),
                              fillColor: Colors.black,
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                borderSide: BorderSide(
                                  color: Colors.black,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 2.0,
                                ),
                              ),
                            ),
                            keyboardType: TextInputType.text,
                            obscureText: true,
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                ColoredCheckbox(
                                  value: _rememberMe,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      _rememberMe = value!;
                                    });
                                  },
                                  fillColor: Color(0xFFFF2273),
                                ),
                                SizedBox(width: 5),  // Agregado un espacio de 5
                                Text(
                                  'Remember',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            TextButton(
                              onPressed: () {
                                // Agrega la lógica para "Forgot Password" aquí
                              },
                              child: Text(
                                'Forgot Password?',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Agrega tu lógica de inicio de sesión aquí
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Text(
                    "Sign In",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(150, 50),
                  backgroundColor: Color(0xFFFFD33B), // Color de fondo para Sign In
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0), // Radio de los bordes
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Agrega tu lógica de registro aquí
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(150, 50),
                  backgroundColor: Color(0xFF284A76), // Color de fondo para Sign Up
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0), // Radio de los bordes
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Or connect with",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.facebook, color: Color(0xFFFF2273), size: 40),
                      ),
                    ],
                  ),
                  SizedBox(width: 40),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.email, color: Color(0xFFFF2273), size: 40),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}