import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:change_notifier_test_app/main.dart';
import 'package:provider/provider.dart';
import 'package:change_notifier_test_app/user/user_view_model.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('詳細'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(user.userName),
            Text(user.mailAddress),
          ],
        ),
      ),
    );
  }
}
