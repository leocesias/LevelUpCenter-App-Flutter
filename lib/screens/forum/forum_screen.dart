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
            padding: const EdgeInsets.all(10.0),
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
                  onPressed: () {},
                  icon: Icon(Icons.search),
                ),

                Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color(0xFF284A76),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 20), // Ajusta el padding según sea necesario
                  child: DropdownButton<String>(
                    icon: Icon(Icons.keyboard_arrow_down, color: Colors.white), // Cambiar el color de la flecha a blanco
                    underline: Container(), // Para eliminar la línea inferior del DropdownButton
                    items: <String>['Filter 1', 'Filter 2', 'Filter 3']
                        .map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: TextStyle(color: Colors.white),
                        ),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {},
                    hint: Text('Filter', style: TextStyle(color: Colors.white)),
                  ),
                )
              ],
            ),
          ),
          Divider(thickness: 1, color: Colors.black),
          SizedBox(height: 8),
          Row(
            children: [
              SizedBox(width: 16),
              CircleAvatar(
                radius: 24,
                backgroundImage: AssetImage('assets/images/coach.png'),
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
                onPressed: () {},
                icon: Icon(Icons.send),
              ),
              SizedBox(width: 16),
            ],
          ),
          SizedBox(height: 8), // Adjust spacing
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
            child: Text(
              'Forum',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 5, // Replace with the actual number of posts
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('assets/images/coach.png'), // Replace with the actual image
                  ),
                  title: Text('Author Name'), // Replace with the actual author name
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('2 hours ago'), // Replace with the actual time
                      Text(
                        'This is the description of the post. It can contain details about the topic being discussed.',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ), // Replace with the actual post description
                      ElevatedButton(
                        onPressed: () {
                          // Handle see answers button tap
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'See Answers',
                              style: TextStyle(color: Colors.black),
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              color: Color(0xFFFF2273),
                            ),
                          ],
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                        ),
                      ),
                    ],
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () {
                          // Handle like button tap
                        },
                        icon: Icon(Icons.thumb_up, color: Color(0xFFFF2273)),
                      ),
                      IconButton(
                        onPressed: () {
                          // Handle report button tap
                        },
                        icon: Icon(Icons.report, color: Color(0xFFFF2273)),
                      ),
                    ],
                  ),
                  onTap: () {
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}