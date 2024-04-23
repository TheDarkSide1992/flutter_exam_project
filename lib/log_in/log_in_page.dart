import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_exam_project/cubit/account/profile_cubit.dart';
import 'package:flutter_exam_project/cubit/account/profile_state.dart';
import 'package:flutter_exam_project/settings/settigns_page.dart';
import 'package:flutter_exam_project/utils/constants.dart';

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

    //TODO add authentication

       context.read<ProfileCubit>().signIn(
         _emailController.text,
         _passwordController.text,
      );

       Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SettingPage()),
      );



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
      body: BlocConsumer<ProfileCubit, ProfileState>(
        listener: (context, state) {
          if (state is LoggedProfile) {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const SettingPage()),
            );
          }
          if (state is Autherror) {
            context.showErrorSnackBar(message: "Wrong password");
          }

        },
        builder:(context, state) => ListView(
          children: [
            SizedBox(height: 95),
            TextFormField(
              controller: _emailController,
              decoration:
              const InputDecoration(labelText: 'Email'),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 30),
            TextFormField(
              controller: _passwordController,
              decoration: const InputDecoration(
                  labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: _isLoading ? null : _signIn,
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}