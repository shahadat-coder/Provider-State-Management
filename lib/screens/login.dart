import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/provider/auth_provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        TextFormField(
          controller: emailController,
          decoration: InputDecoration(
            hintText: 'Email'
          ),
        ),
          SizedBox(height: 15,),
          TextFormField(
            obscureText: true,
            controller: passwordController,
            decoration: InputDecoration(
                hintText: 'Password'
            ),
          ),
          SizedBox(height: 15,),

          InkWell(
            onTap: (){
              authProvider.login(emailController.text.toString(), passwordController.text.toString());
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Center(
                  child: authProvider.loading ? CircularProgressIndicator() : Text('Continue'),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
