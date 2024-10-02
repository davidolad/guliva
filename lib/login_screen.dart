import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Guliva logo
              // Image.asset('assets/guliva_logo.png', height: 100),

              SizedBox(height: 30),

              // Login header
              Text(
                'Log In',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue.shade900,
                ),
              ),

              SizedBox(height: 10),

              // Login with Google and Facebook
              Text('LOG IN WITH...', style: TextStyle(color: Colors.grey)),
              SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.g_mobiledata, color: Colors.white),
                    label: Text('GOOGLE'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      side: BorderSide(color: Colors.blue.shade900),
                      minimumSize: Size(150, 50),
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.facebook, color: Colors.white),
                    label: Text('FACEBOOK'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      side: BorderSide(color: Colors.blue.shade900),
                      minimumSize: Size(150, 50),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20),

              // Login with email header
              Text('LOG IN WITH EMAIL', style: TextStyle(color: Colors.grey)),

              SizedBox(height: 20),

              // Email TextField
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Email address',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),

              // Password TextField with visibility toggle
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.visibility_off),
                ),
              ),

              // Forgot Password
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    // Handle forgot password
                  },
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(color: Colors.orange),
                  ),
                ),
              ),

              SizedBox(height: 20),

              // Login button
              ElevatedButton(
                onPressed: () {
                  // Handle login
                },
                child: Text('LOG IN'),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                  backgroundColor: Colors.blue.shade900,
                ),
              ),

              SizedBox(height: 20),

              // Touch/Face ID button
              Column(
                children: [
                  Icon(Icons.fingerprint,
                      size: 60, color: Colors.blue.shade900),
                  Text('Touch / Face ID',
                      style: TextStyle(color: Colors.blue.shade900)),
                ],
              ),

              SizedBox(height: 20),

              // Sign Up Navigation
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?",
                      style: TextStyle(color: Colors.black)),
                  TextButton(
                    onPressed: () {
                      // Navigate to Sign Up screen
                    },
                    child:
                        Text('Sign Up', style: TextStyle(color: Colors.orange)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
