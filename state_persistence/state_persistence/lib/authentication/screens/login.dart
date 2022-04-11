import 'package:shared_preferences/shared_preferences.dart';
import 'package:state_persistence/authentication/screens/create_account.dart';
import 'package:state_persistence/auth_service.dart';
import 'package:state_persistence/home/screens/home.dart';
import 'package:flutter/material.dart';

late SharedPreferences loginData;

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Future<dynamic> init() async {
    loginData = await SharedPreferences.getInstance();
    final String? email = loginData.getString('email');
    final String? password = loginData.getString('password');
    if (email != null || (email?.isNotEmpty)!) {
      AuthService()
          .login(email: email.toString(), password: password.toString());
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const Home(
            email: '',
          ),
        ),
      );
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    init();
  }

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              child: TextField(
                controller: _emailController,
                decoration: const InputDecoration(hintText: 'Email'),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              child: TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'Password',
                ),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            ElevatedButton(
              onPressed: () async {
                //AuthService().login(email: _emailController.text.toString(),password: _passwordController.text.toString());
                loginData = await SharedPreferences.getInstance();
                loginData.setString('email', _emailController.text.toString());
                loginData.setString(
                    'password', _passwordController.text.toString());
                final message = await AuthService().login(
                  email: _emailController.text,
                  password: _passwordController.text,
                );

                if (message!.contains('Success')) {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => const Home(
                        email: '',
                      ),
                    ),
                  );
                }
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(message),
                  ),
                );
              },
              child: const Text('Login'),
            ),
            const SizedBox(
              height: 30.0,
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => CreateAccount(),
                  ),
                );
              },
              child: const Text('Create Account'),
            ),
          ],
        ),
      ),
    );
  }
}
