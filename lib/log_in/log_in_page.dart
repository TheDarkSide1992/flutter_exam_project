import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_exam_project/cubit/account/profile_bloc.dart';
import 'package:flutter_exam_project/cubit/account/profile_state.dart';
import 'package:flutter_exam_project/utils/constants.dart';
import '../home/homepage.dart';

class LoginPage extends StatefulWidget {
  static Route<void> route() {
    return MaterialPageRoute(builder: (context) => LoginPage());
  }

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isLoading = false;
  final _emailController = TextEditingController(text: "");
  final _passwordController = TextEditingController(text: "");

  Future<void> _signIn() async {
    setState(() {
      _isLoading = true;
    });

    context.read<ProfileBloc>().signIn(
          _emailController.text,
          _passwordController.text,
        );


    setState(() {
      _isLoading = false;
    });


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
      body: BlocConsumer<ProfileBloc, ProfileState>(
        listener: (context, state) {
          if (state is LoggedProfile) {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const RoomOverviewApp()),
            );
          }
          if (state is Autherror) {
            context.showErrorSnackBar(message: "Wrong username or password");
          }
        },
        builder: (context, state) => ListView(
          children: [
            SizedBox(height: 95),
            TextFormField(
              controller: _emailController,
              decoration: const InputDecoration(labelText: 'Email'),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 30),
            TextFormField(
              controller: _passwordController,
              decoration: const InputDecoration(labelText: 'Password'),
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
