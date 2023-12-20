import 'package:amin_testing_success/screens/login_page.dart';
import 'package:amin_testing_success/screens/sabtenam_page.dart';
import 'package:amin_testing_success/screens/password_recovery.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  void navigateToBlogPage(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return page;
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('نانوایی اینترنتی امین کشکولی'),
        backgroundColor: Colors.orange[600],
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'به نانوایی اینترنتی امین کشکولی خوش آمدید',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
                Image(
                  image: AssetImage('images/w.jpg'),
                  width: 250,
                  height: 250,
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      minimumSize: Size(
                        200.0,
                        40.0,
                      ),
                      backgroundColor: Colors.orange[600]),
                  onPressed: () {
                    navigateToBlogPage(
                      context,
                      LogIn(),
                    );
                  },
                  child: Text(
                    'ورود به حساب',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    navigateToBlogPage(
                      context,
                      SabtName(),
                    );
                  },
                  child: Text(
                    'ثبت نام',
                    style: TextStyle(fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      minimumSize: Size(200.0, 43.0)),
                ),
                ElevatedButton(
                  onPressed: () {
                    navigateToBlogPage(
                      context,
                      PasswordRecovery(),
                    );
                  },
                  child: Text(
                    'فراموشی رمز عبور',
                    style: TextStyle(fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[800],
                      minimumSize: Size(100.0, 40.0)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
