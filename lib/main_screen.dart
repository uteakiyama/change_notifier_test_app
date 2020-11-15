import 'package:change_notifier_test_app/user/user_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:change_notifier_test_app/user/detail_screen.dart';
import 'detail_screen.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('ホーム'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(user.userName),
            Text(user.mailAddress),
            TextField(
              enabled: true,
              maxLength: 10,
              maxLengthEnforced: false,
              style: TextStyle(color: Colors.red),
              obscureText: false,
              maxLines: 1,
              onChanged: (String inputName) {
                user.changeNameText(inputName);
              },
            ),
            TextField(
              enabled: true,
              maxLength: 10,
              maxLengthEnforced: false,
              style: TextStyle(color: Colors.red),
              obscureText: false,
              maxLines: 1,
              onChanged: (String inputMailAddress) {
                user.changeMailAddressText(inputMailAddress);
              },
            ),
            RaisedButton(
              child: const Text('Button'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return DetailScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
