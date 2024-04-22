import 'package:flutter/material.dart';
import 'package:flutter_exam_project/settigns_page.dart';

import '../app_drawer.dart';

class LoginPage extends StatefulWidget {
  static Route<void> route() {
    return MaterialPageRoute(
        builder: (context) => LoginPage());
  }
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isLoading = false;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future<void> _signIn() async {
    setState(() {
      _isLoading = true;
    });

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SettingPage()),
    );
    /*
    //TODO add authentication
    try {
      await (
        email: _emailController.text,
        password: _passwordController.text,
      );
    } on AuthException catch (error) {
      //TODO AuthUser message to USer
    } catch (_) {
      //TODO Display Rejct
    }
    */

    if (mounted) {
      setState(() {
        _isLoading = true;
      });
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sign In')),
      drawer: const AppDrawer(),
      body: ListView(
        children: [
          TextFormField(
            controller: _emailController,
            decoration:
            const InputDecoration(labelText: 'Email'),
            keyboardType: TextInputType.emailAddress,
          ),
          Spacer(),
          TextFormField(
            controller: _passwordController,
            decoration: const InputDecoration(
                labelText: 'Password'),
            obscureText: true,
          ),
          Spacer(),
          ElevatedButton(
            onPressed: _isLoading ? null : _signIn,
            child: const Text('Login'),
          ),
        ],
      ),
    );
  }
}