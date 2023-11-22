import 'package:flutter/material.dart';
import 'package:game_mentor/services/user_service.dart';

class UserListScreen extends StatelessWidget {
  const UserListScreen({super.key});

  Future<List<dynamic>> fetchUsers() async {
    try {
      final response = await UserService.getAll();
      if (response.statusCode == 200) {
        return response.data!;
      } else {
        return [];
      }
    } catch (e) {
      return [];
    }
  }

  Future<void> _deleteUser(int id, context) async {
    try {
      final response = await UserService.deleteOne(id);
      if (response.statusCode == 204) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Deleted User Successfully'),
            backgroundColor: Colors.green,
          ),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Failed to delete user'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Edit User'),
          content: Text('This is the dialog content.'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                // Close the dialog
                Navigator.of(context).pop();
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: fetchUsers(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final users = snapshot.data!;
            return ListView.separated(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                      "${users[index]['firstName']} ${users[index]['lastName']}"),
                  subtitle: Text(users[index]['username']),
                  trailing: Wrap(
                    spacing: 12,
                    children: [
                      GestureDetector(
                        onTap: () => _showDialog(context),
                        child: const Icon(
                          Icons.edit,
                          color: Colors.blue,
                        ),
                      ),
                      GestureDetector(
                        onTap: () => _deleteUser(users[index]['id'], context),
                        child: const Icon(
                          Icons.delete,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) {
                // Divider widget for the separator
                return const Divider(
                  height: 10, // Adjust the height of the separator
                  color: Colors.grey,
                );
              },
            );
          }
          return const CircularProgressIndicator();
        });
  }
}
