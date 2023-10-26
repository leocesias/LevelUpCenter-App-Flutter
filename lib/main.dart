import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.lightBlue
      ),
      home: ProfileConfig(),
    );
  }
}

class ProfileConfig extends StatefulWidget {
  const ProfileConfig({super.key});

  @override
  State<ProfileConfig> createState() => _ProfileConfigState();
}

class _ProfileConfigState extends State<ProfileConfig> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight + 60),
        child: Column(
          children: [
            AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              title: Text('LevelUpCenter'),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.home_filled, size: 30),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.notifications, size: 30),
                  onPressed: () {},
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: IconButton(
                    icon: Icon(Icons.home, size: 45),
                    color: Colors.black,
                    onPressed: () {},
                  ),
                ),
                Expanded(
                  child: IconButton(
                    icon: Icon(Icons.people, size: 45),
                    color: Colors.black,
                    onPressed: () {},
                  ),
                ),
                Expanded(
                  child: IconButton(
                    icon: Icon(Icons.gamepad, size: 45),
                    color: Colors.black,
                    onPressed: () {},
                  ),
                ),
                Expanded(
                  child: IconButton(
                    icon: Icon(Icons.email, size: 45),
                    color: Colors.black,
                    onPressed: () {},
                  ),
                ),
                Expanded(
                  child: IconButton(
                    icon: Icon(Icons.person, size: 45),
                    color: Colors.black,
                    onPressed: () {},
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
          SizedBox(height: 20),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Profile', style: TextStyle(fontSize: 20)),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.yellow[200]!),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
                    child: Text('Configuration', style: TextStyle(fontSize: 20)),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.lightGreen.shade100),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 180,
                  child: Center(
                    child: Icon(Icons.add_box, size: 70, color: Colors.pink,),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blue,
                            ),
                            child: Center(
                              child: Text('Image', style: TextStyle(color: Colors.white)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    // Team Column
                    Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 40),
                                  child: Text('Team', style: TextStyle(fontSize: 20)),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 40),
                                  child: Text('Age', style: TextStyle(fontSize: 20)),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 40),
                                  child: Text('Country', style: TextStyle(fontSize: 20)),
                                ),
                              ],
                            ),
                            SizedBox(width: 20),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 40),
                                  child: Text('Language', style: TextStyle(fontSize: 20)),

                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 40),
                                  child: Text('Strength', style: TextStyle(fontSize: 20)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
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
    );
  }

  Widget _buildIconButtonWithText(String text) {
    return Padding(
      padding: EdgeInsets.only(left: 20, top: 20),
      child: ElevatedButton.icon(
        onPressed: () {
          // Handle button press
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
        ),
        icon: Icon(Icons.add, color: Colors.pink),
        label: Text(text, style: TextStyle(color: Colors.black)),
      ),
    );
  }
}


class FeedbackMailbox extends StatefulWidget {

  @override
  State<FeedbackMailbox> createState() => _FeedbackMailboxState();
}

class _FeedbackMailboxState extends State<FeedbackMailbox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight + 60),
        child: Column(
          children: [
            AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              title: Text('LevelUpCenter'),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.home_filled, size: 30),
                  onPressed: () {
                  },
                ),
                IconButton(
                  icon: Icon(Icons.notifications, size: 30),
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
                    icon: Icon(Icons.home, size: 45),
                    color: Colors.black,
                    onPressed: () {
                    },
                  ),
                ),
                Expanded(
                  child: IconButton(
                    icon: Icon(Icons.people, size: 45),
                    color: Colors.black,
                    onPressed: () {
                    },
                  ),
                ),
                Expanded(
                  child: IconButton(
                    icon: Icon(Icons.gamepad, size: 45),
                    color: Colors.black,
                    onPressed: () {
                    },
                  ),
                ),
                Expanded(
                  child: IconButton(
                    icon: Icon(Icons.email, size: 45),
                    color: Colors.black,
                    onPressed: () {
                    },
                  ),
                ),
                Expanded(
                  child: IconButton(
                    icon: Icon(Icons.person, size: 45),
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
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Notifications',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Divider(thickness: 1, color: Colors.black),
          ListView.builder(
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage('imageUrl'),
                      radius: 25,
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        'Feedback Message $index',
                        style: TextStyle(fontSize: 16),
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
  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight + 60),
        child: Column(
          children: [
            AppBar(
              elevation: 0, // No shadow
              backgroundColor: Colors.transparent,
              title: Text('LevelUpCenter'),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.home_filled, size: 30),
                  onPressed: () {
                    // Handle market button press
                  },
                ),
                IconButton(
                  icon: Icon(Icons.notifications, size: 30),
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
                    icon: Icon(Icons.home, size: 45),
                    color: Colors.black,
                    onPressed: () {
                    },
                  ),
                ),
                Expanded(
                  child: IconButton(
                    icon: Icon(Icons.people, size: 45),
                    color: Colors.black,
                    onPressed: () {
                    },
                  ),
                ),
                Expanded(
                  child: IconButton(
                    icon: Icon(Icons.gamepad, size: 45),
                    color: Colors.black,
                    onPressed: () {
                    },
                  ),
                ),
                Expanded(
                  child: IconButton(
                    icon: Icon(Icons.email, size: 45),
                    color: Colors.black,
                    onPressed: () {
                    },
                  ),
                ),
                Expanded(
                  child: IconButton(
                    icon: Icon(Icons.person, size: 45),
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
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Notifications',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Divider(thickness: 1, color: Colors.black),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(16.0),
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage('imageUrl'),
                      radius: 20,
                    ),
                    SizedBox(width: 10),
                    Text('John Doe • 2 hours ago'),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
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
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Text(
                    'Send Feedback:',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(color: Colors.black),
                  ),
                  child: TextField(
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
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight + 60),
        child: Column(
          children: [
            AppBar(
              elevation: 0, // No shadow
              backgroundColor: Colors.transparent,
              title: Text('LevelUpCenter'),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.home_filled, size: 30),
                  onPressed: () {
                    // Handle market button press
                  },
                ),
                IconButton(
                  icon: Icon(Icons.notifications, size: 30),
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
                    icon: Icon(Icons.home, size: 45),
                    color: Colors.black,
                    onPressed: () {
                    },
                  ),
                ),
                Expanded(
                  child: IconButton(
                    icon: Icon(Icons.people, size: 45),
                    color: Colors.black,
                    onPressed: () {
                    },
                  ),
                ),
                Expanded(
                  child: IconButton(
                    icon: Icon(Icons.gamepad, size: 45),
                    color: Colors.black,
                    onPressed: () {
                    },
                  ),
                ),
                Expanded(
                  child: IconButton(
                    icon: Icon(Icons.email, size: 45),
                    color: Colors.black,
                    onPressed: () {
                    },
                  ),
                ),
                Expanded(
                  child: IconButton(
                    icon: Icon(Icons.person, size: 45),
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
              Padding(

                padding: const EdgeInsets.only(top: 15, bottom: 5),
                child: Text(
                  'Profile',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),

              Divider(thickness: 1, color: Colors.black),
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
                          child: Center(
                            child: Text(
                              'No Image',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Column(
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

              Divider(thickness: 1, color: Colors.black),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.privacy_tip),

                    color: Colors.pinkAccent,
                    onPressed: () {},
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
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
                    icon: Icon(Icons.account_circle),
                    color: Colors.pinkAccent,
                    onPressed: () {},
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
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
                    icon: Icon(Icons.update),

                    color: Colors.pinkAccent,
                    onPressed: () {},
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'App Updates',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                ],
              ),
              Divider(thickness: 1, color: Colors.black),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 15),
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
                            child: Center(
                              child: Text(
                                'No Image',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Column(
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
      backgroundColor: Colors.black,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlutterLogo(
                size: 140.0,
              ),
              Form(
                child: Theme(
                  data: ThemeData(
                    brightness: Brightness.dark,
                    primarySwatch: Colors.teal,
                    inputDecorationTheme: InputDecorationTheme(
                      labelStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                      ),
                    ),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(70.0),
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: "Username",
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: "Password",
                          ),
                          keyboardType: TextInputType.text,
                          obscureText: true,
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Checkbox(
                                  value: _rememberMe,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      _rememberMe = value!;
                                    });
                                  },
                                ),
                                Text(
                                  'Remember',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                            TextButton(
                              onPressed: () {
                              },
                              child: Text(
                                'Forgot Password?',
                                style: TextStyle(color: Colors.white),
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
                  // Add your login logic here
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(150, 50),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Text(
                    "Register",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(150, 50),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Or connect with",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton.icon(
                    onPressed: () {
                    },
                    icon: Icon(Icons.facebook),
                    label: Text("Facebook"),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(120, 40),
                    ),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton.icon(
                    onPressed: () {
                    },
                    icon: Icon(Icons.email),
                    label: Text("Email"),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(120, 40),
                    ),
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