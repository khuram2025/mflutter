import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageURL = "https://picsum.photos/200";
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.deepPurple
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
             child: UserAccountsDrawerHeader(
               margin: EdgeInsets.zero,
               accountName: Text("Khan"),
               accountEmail: Text("khan@gmail.com"),
               currentAccountPicture: CircleAvatar(
                 backgroundImage: NetworkImage(imageURL),
               )),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home, color: Colors.white,),
              title: Text("Home", textScaleFactor:1.2, style: TextStyle(color: Colors.white, ),),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail, color: Colors.white,),
              title: Text("Mail", textScaleFactor:1.2, style: TextStyle(color: Colors.white, ),),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled, color: Colors.white,),
              title: Text("Profile", textScaleFactor:1.2, style: TextStyle(color: Colors.white, ),),
            )
          ],
        ),
      ),
    );
  }
}
