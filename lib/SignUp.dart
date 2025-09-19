import 'package:flutter/material.dart';
import 'package:sign_in_button/sign_in_button.dart';

class Signup extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Signup form
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sign up",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),
                ),
                SizedBox(height: 30),
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    labelText: "Name",
                    hintText: "Mr.Muffin",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: "Email",
                    hintText: "mrmuff@gmail.com",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "Enter your password",
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(width: 5),
                    GestureDetector(
                      onTap: () {
                        print("Navigate to login page");
                      },
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.deepOrange,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      print("Name: ${nameController.text}");
                      print("Email: ${emailController.text}");
                      print("Password: ${passwordController.text}");
                    },
                    child: Text("SIGN UP"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrangeAccent,
                      foregroundColor: Colors.white,
                      minimumSize: Size(150, 50),
                    ),
                  ),
                ),
              ],
            ),

            // Bottom social media section
            Column(
              children: [
                Text(
                  "Or sign up using social media",
                  style: TextStyle(color: Colors.grey[700]),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Google logo only
                    SignInButtonBuilder(
                      icon: Icons.g_mobiledata_rounded, // placeholder icon or use FontAwesomeIcons.google
                      backgroundColor: Colors.red,
                      onPressed: () {
                        print("Google login clicked");
                      },
                      text: '', // remove text
                      height: 50,
                      width: 50,
                      shape: CircleBorder(),
                    ),
                    SizedBox(width: 20),
                    // Facebook logo only
                    SignInButtonBuilder(
                      icon: Icons.facebook,
                      backgroundColor: Color(0xFF1877F2), // Facebook blue
                      onPressed: () {
                        print("Facebook login clicked");
                      },
                      text: '', // remove text
                      height: 50,
                      width: 50,
                      shape: CircleBorder(),
                    ),
                  ],
                ),
                SizedBox(height: 30),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
