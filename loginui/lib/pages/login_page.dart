import 'package:flutter/material.dart';
import 'package:loginui/components/buttons.dart';
import 'package:loginui/components/textfields.dart';

class LoginPage extends StatelessWidget {
   LoginPage({super.key});

  //text editing Controllers
  final usernameController = TextEditingController();
  final passwordController= TextEditingController();

  //sign user in method
   void signUserIn() {

   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body:SafeArea(
      child: Center(
        child: Column(
          children: [
            const SizedBox(height: 50),
          //logo
            Icon(
              Icons.lock,
              size: 100,
          ),
            const SizedBox(height: 50),
          //Welcome back
          Text(
            'Welcome Back you\'ve been missed',
            style: TextStyle(color: Colors.grey[700],
            fontSize: 16,
            ),
          ),
            const SizedBox(height: 25),
          // /Username Text Fields
            MyTextField(
              controller: usernameController,
              hintText: 'Username',
              obscureText: false,
            ),

            const SizedBox(height: 10),

            //password textfield
            MyTextField(
              controller: passwordController,
              hintText: 'Password',
              obscureText: true,

            ),
          //forgot password
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Forgot Password',
                  style: TextStyle(color: Colors.grey[600]),
                  ),
                ],
              ),
            ),

          const SizedBox(height: 25),

          //sign in button
            MyButton(
              onTap: signUserIn,
            ),
          //or contibue with
            const SizedBox(height: 50),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              children: [
                Expanded(
                  child: Divider(
                  thickness: 3,
                  color: Colors.grey[400],
                ),

                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                      'Or Continue With',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ),
                Expanded(
                  child: Divider(
                    thickness: 3,
                    color: Colors.grey[400],
                  ),

                )

              ],
            ),
          )
          //google + apple sign in button
            Row(
              children: [
                Image.asset(
                    'images/google.png',
                  height: 72,

                ),
              ],
            )
          //not a member, register
        ],
        ),
      ),
      ),
    );
  }
}
