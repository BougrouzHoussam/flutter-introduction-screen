// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/material.dart';

class Bar extends StatelessWidget {
  const Bar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(padding: EdgeInsets.zero, children: <Widget>[
      UserAccountsDrawerHeader(
        //this widget is the one about the account the user will have in the navbar
        // you need the most in the account page remember to put in the flutter note
        accountName: Text('Darksider'),
        accountEmail: Text('houssambougrouz@gmail.com'),
        //the widget from the card app remeber it from my card app
        //it do a circle that countaint the picture that you need
        currentAccountPicture: CircleAvatar(
          child: ClipOval(
            child: Image(
              image: AssetImage('images/346439.jpg'),
              width: 90,
              height: 90,
              fit: BoxFit.cover,
            ),
          ),

          //here remember when add the picture to add
          //fit propirty that gone fix the fit: BoxFit.cover
        ),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/346439.jpg'), fit: BoxFit.cover)),
      ),
      ListTile(
        leading: Icon(Icons.favorite),
        title: Text('Favorite'),
        onTap: () => {print("Favorite")},
      ),
      ListTile(
        leading: Icon(Icons.share),
        title: Text('Share'),
        onTap: () => {print("Share")},
      ),
      ListTile(
        leading: Icon(Icons.notifications),
        title: Text('Notification'),
        onTap: () => {print("notification")},
        //there is this property that allow you to dispaly
        //in front the title trailing
        trailing: SizedBox(
            width: 40,
            height: 20,
            child: Center(
              child: Text("99+",
                  style: TextStyle(
                      color: Colors.redAccent[700],
                      fontWeight: FontWeight.bold)),
            )),
      ),
      Divider(),
      ListTile(
        leading: Icon(Icons.contact_page_outlined),
        title: Text('Contact us'),
        onTap: () => {print("contact us")},
      ),
      ListTile(
        leading: Icon(Icons.description),
        title: Text('About us'),
        onTap: () => {print("About us")},
      ),
      ListTile(
        leading: Icon(Icons.settings),
        title: Text('Settings'),
        onTap: () => {print("Settings")},
      ),
      ListTile(
        leading: Icon(Icons.logout),
        title: Text('Logout'),
        onTap: () => {print("Logout")},
      ),
    ]));
  }
}
