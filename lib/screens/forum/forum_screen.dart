import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForumPage extends StatefulWidget {
  const ForumPage({Key? key}) : super(key: key);

  @override
  _ForumPageState createState() => _ForumPageState();
}

class _ForumPageState extends State<ForumPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: MediaQuery.of(context).padding.top),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 8.0,
                          horizontal: 16.0,
                        ),
                        hintText: 'Search',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        filled: true,
                        fillColor: Color(0xFFF1F9EE),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                  },
                  icon: Icon(Icons.search),
                ),
                DropdownButton<String>(
                  items: <String>['Filter 1', 'Filter 2', 'Filter 3']
                      .map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                  },
                  hint: Text('Filter'),
                ),
              ],
            ),
          ),
          SizedBox(height: 8),
          Row(
            children: [
              SizedBox(width: 16),
              CircleAvatar(
                radius: 24,
                backgroundImage: AssetImage('assets/profile_image.png'),
              ),
              SizedBox(width: 16),
              Expanded(
                child: Container(
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 8.0,
                        horizontal: 16.0,
                      ),
                      hintText: 'Post your thoughts',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      filled: true,
                      fillColor: Color(0xFFF1F9EE),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 16),
              IconButton(
                onPressed: () {

                },
                icon: Icon(Icons.send),
              ),
              SizedBox(width: 16),
            ],
          ),
          SizedBox(height: 8), // Adjust spacing

        ],
      ),
    );
  }
}