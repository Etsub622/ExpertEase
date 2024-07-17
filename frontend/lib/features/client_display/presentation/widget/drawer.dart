import 'package:expertease/core/routes/path.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 370,
      child: Drawer(
        backgroundColor: Color.fromARGB(255, 92, 149, 202),
        child: Column(
          children: [
            Container(
              color: Color.fromARGB(255, 92, 149, 202),
              padding: EdgeInsets.symmetric(
                  vertical: 50,
                  horizontal: 100), 
              child: Column(
                children: [
                  Center(
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                          'https://via.placeholder.com/150'), 
                    ),
                  ),
                  SizedBox(height: 8),
                  Text('Heran Eshetu',
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                  SizedBox(height: 16),
                  Divider(),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.all(20),
                children: [
                  ListTile(
                    leading: Icon(Icons.house, color: Colors.white),
                    title: Text('Home',
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                    onTap: () {
                      context.go('/');
                    },
                  ),
                  SizedBox(height: 20),
                  ListTile(
                    leading: Icon(Icons.person, color: Colors.white),
                    title: Text('Profile',
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                    onTap: () {
                      context.go(AppPath.expertProfile);
                    },
                  ),
                  SizedBox(height: 20),
                  ListTile(
                    leading: Icon(Icons.bar_chart, color: Colors.white),
                    title: Text('Stats',
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                    onTap: () {
                      // context.go('/client_profile');
                    },
                  ),
                  SizedBox(height: 20),
                  ListTile(
                    leading: Icon(Icons.report, color: Colors.white),
                    title: Text('Reports',
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                    onTap: () {},
                  ),
                  SizedBox(height: 20),
                  ListTile(
                    leading: Icon(Icons.settings, color: Colors.white),
                    title: Text('Settings',
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                    onTap: () {},
                  ),
                  SizedBox(height: 20),
                  ListTile(
                    leading: Icon(Icons.help, color: Colors.white),
                    title: Text('Help and Support',
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 20 ,horizontal:40),
              leading: Icon(Icons.logout, color: Colors.red),
              title: Text('Log Out', style: TextStyle(color: Colors.red)),
              onTap: () {
                context.go(AppPath.welcome);
              },
            ),
          ],
        ),
      ),
    );
  }
}
