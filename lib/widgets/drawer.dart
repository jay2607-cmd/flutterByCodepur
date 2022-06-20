import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // ignore: non_constant_identifier_names
    const imageurl = "https://upload.wikimedia.org/wikipedia/commons/7/7e/Virat_Kohli.jpg";

    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: const [
            DrawerHeader(
            padding: EdgeInsets.zero,
            margin: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(accountName:Text("Jay Gaudani"),
             accountEmail: Text("jaygaudani50062@gmail.com"),
             currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage(imageurl)),
             ),

            ),

          ListTile(
            
            leading: Icon(CupertinoIcons.home , 
            color: Colors.white,),
            title: 
            
            Text("Home",
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.white),
            ),

          ),
          ListTile(
            
            leading: Icon(CupertinoIcons.search , 
            color: Colors.white,),
            title: 
            
            Text("Search",
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.white),
            ),

          ),

          ListTile(
            
            leading: Icon(CupertinoIcons.book , 
            color: Colors.white,),
            title: 
            
            Text("About",
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.white),
            ),

          ),

          ListTile(
            
            leading: Icon(CupertinoIcons.phone , 
            color: Colors.white,),
            title: 
            
            Text("Contact",
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.white),
            ),

          ),
         

          ],
        ),
      ),
    );
  }
}