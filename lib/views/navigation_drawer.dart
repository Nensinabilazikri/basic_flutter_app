import 'package:Batch_256/utilities/custom_alert_dialog.dart';
import 'package:Batch_256/utilities/shared_preferences.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'loginscreen.dart';

class NavigationDrawer extends StatefulWidget {
  @override
  NavigationDrawerState createState() => NavigationDrawerState();
}

class NavigationDrawerState extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Expanded(
              child: ListView(
            children: [createHeaderMenu(context), createContentMenu(context)],
          )),
          Padding(
            padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
            child: TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black12)),
              child: Text('Logout'),
              onPressed: () {
                SharePreferencesHelper.saveIsLogin(false);
                //2. buang screen dashboard, tampilkan login
                Navigator.of(context)
                    .pushReplacement(MaterialPageRoute(builder: (_) {
                  return LoginScreen();
                }));
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget createHeaderMenu(BuildContext context) {
    return Container(
      //color: Colors.blueGrey,
      height: MediaQuery.of(context).size.height * 0.3,
      child: DrawerHeader(
        decoration: BoxDecoration(color: Colors.blueAccent),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(45),
                  child: Image.network(
                    'https://th.bing.com/th/id/OIP.5gHrxrD00yFbZkFJpHVQMgHaHa?pid=ImgDet&w=400&h=400&rs=1',
                    height: 100,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Username',
                  style: TextStyle(color: Colors.white, fontSize: 21),
                )
              ],
            ),
            SizedBox(
              height: 35,
            ),
            Text(
              'Versi 1.0',
              style: TextStyle(color: Colors.white70, fontSize: 11),
            ),
          ],
        ),
      ),
    );
  }

  Widget createContentMenu(BuildContext context) {
    return Container();
  }

  void showAlert(BuildContext _context, String _title, String _message) {
    var alertDialog = CustomAlertDioalog(
      title: _title,
      message: _message,
      action_text: 'OK',
    );
    showDialog(context: _context, builder: (_) => alertDialog);
  }
}
