import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Login Screen'),
        ),
        body: Center(
            child: Container(
          padding: const EdgeInsets.all(30),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
                padding: const EdgeInsets.only(bottom: 50),
                child: Image.asset('assets/icon.png', width: 40)),
            Column(
              children: [
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    labelText: 'Email',
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    labelText: 'Password',
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
            Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    if (emailController.text == 'admin' &&
                        passwordController.text == 'admin') {
                      print('Login Success');
                    } else {
                      print('Login Failed');
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(40),
                  ),
                  child: const Text('Login'),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    minimumSize: Size.zero,
                    padding: EdgeInsets.zero,
                  ),
                  onPressed: () {},
                  child: const Text('Forgot Password?',
                      style: TextStyle(color: Colors.grey)),
                ),
              ],
            )
          ]),
        )),
      ),
    );
  }
}
