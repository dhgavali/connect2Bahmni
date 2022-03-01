import 'package:bahmni_doctor/screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/user_provider.dart';
import '../domain/models/user.dart';

class UserDashBoard extends StatefulWidget {
  const UserDashBoard({Key? key}) : super(key: key);
  @override
  _UserDashBoardState createState() => _UserDashBoardState();
}

class _UserDashBoardState extends State<UserDashBoard> {
  @override
  Widget build(BuildContext context) {
    User? user = Provider.of<UserProvider>(context).user;
    final ButtonStyle style = ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return Scaffold(
      appBar: AppBar(
        title: const Text("My Bahmni"),
        elevation: 0.1,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            SizedBox(
              height: 80.0,
              child: DrawerHeader(
                  child: Text('', style: TextStyle(color: Colors.white,fontSize: 24,),),
                  decoration: BoxDecoration(color: Colors.blue,),
                  margin: EdgeInsets.all(0.0),
                  padding: EdgeInsets.all(0.0)
              ),
            ),
            ListTile(leading: Icon(Icons.message),title: Text('Messages'),),
            ListTile(leading: Icon(Icons.account_circle),title: Text('Profile'),),
            ListTile(leading: Icon(Icons.settings),title: Text('Settings'),),
            ListTile(leading: Icon(Icons.logout),title: Text('Logout'),),
          ],
        )
      ),
    body: const DashboardWidget()
    );
  }
}