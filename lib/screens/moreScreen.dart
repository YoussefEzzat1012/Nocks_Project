import 'package:flutter/material.dart';

class Morescreen extends StatelessWidget {
  static const routeName = '/MoreScreen';

  Widget _buildListTile(IconData icon, String title) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0), color: Colors.white),
      child: ListTile(
       leading: Icon(icon),
       title: Text(title),
       trailing: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'More Screen',
          textAlign: TextAlign.center,
        )),
      ),
      body: Column(
        children: [
          Text('Hello, Youssef'),
          _buildListTile(Icons.person, 'Profile'),
          _buildListTile(Icons.history, 'My Nocks History'),
          _buildListTile(Icons.favorite, 'Favorites'),
          _buildListTile(Icons.settings, 'Settings'),
          _buildListTile(Icons.help, 'Help'),
          _buildListTile(Icons.description, 'Help'),
          SizedBox(height: 10.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.logout),
              SizedBox(width: 5.0,),
              Text('Logout')
            ],
          ),
          SizedBox(height: 10.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Icon(Icons.delete),
            SizedBox(width: 5.0,),
            Text('Delete Account'),
          ],)

        ],
      ),
    );
  }
}
