import 'package:flutter/material.dart';
import 'package:phrasepics/components/background.dart';
import 'package:phrasepics/utils/constant.dart';

import '../components/bottom_card.dart';
import 'login_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  late Size mediaSize;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaSize = MediaQuery.of(context).size;
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Sign up"),
      // ),
      body: GradientBackground(
        child: Stack(
          children: [
            Positioned(
              top: 100,
              left: 150,
              child: Text(
                "SIGN UP",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                    fontStyle: FontStyle.italic,
                    color: Colors.white),
              ),
            ),
            Positioned(
                bottom: 0,
                child: BottomCard(mediaSize: mediaSize, child: _buildForm()))
          ],
        ),
      ),
    );
  }

  Widget _buildForm() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 60),
          Text(
            "Name",
            style: const TextStyle(color: Colors.black),
          ),
          TextField(
            controller: nameController,
            decoration: InputDecoration(
              suffixIcon: Icon(Icons.person),
            ),
          ),
          const SizedBox(height: 40),
          Text(
            "Email address",
            style: const TextStyle(color: Colors.black),
          ),
          TextField(
            controller: emailController,
            decoration: InputDecoration(
              suffixIcon: Icon(Icons.email),
            ),
          ),
          const SizedBox(height: 40),
          Text(
            "Password",
            style: const TextStyle(color: Colors.black),
          ),
          TextField(
            controller: passwordController,
            decoration: InputDecoration(
              suffixIcon: Icon(Icons.remove_red_eye),
            ),
            obscureText: true,
          ),
          const SizedBox(height: 40),
          ElevatedButton(
            onPressed: () {
              debugPrint("Email : ${emailController.text}");
              debugPrint("Password : ${passwordController.text}");
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Signup Successful")));
              },
            style: ElevatedButton.styleFrom(
              shape: const StadiumBorder(),
              foregroundColor: Colors.white,
              backgroundColor: Color(0xFFBE185D),
              elevation: 20,
              shadowColor: Colors.pinkAccent,
              minimumSize: const Size.fromHeight(60),
            ),
            child: const Text("SignUp"),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(HAVEACCOUNT),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ),
                    );
                  },
                  child: Text("Login")),
            ],
          ),

          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
