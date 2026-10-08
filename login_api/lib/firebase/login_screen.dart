import 'package:flutter/material.dart';

class LoginScreenFirebase extends StatefulWidget {
  const LoginScreenFirebase({super.key});

  @override
  State<LoginScreenFirebase> createState() => _LoginScreenFirebaseState();
}

class _LoginScreenFirebaseState extends State<LoginScreenFirebase> {
  final GlobalKey<FormState> fromkey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),

          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 400,
            ),

            child: Form(
              key: fromkey,

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [

                  // Icon
                  const Icon(
                    Icons.lock_outline,
                    size: 55,
                    color: Colors.deepPurple,
                  ),

                  // Text
                  const Text(
                    'Welcome Back',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  // SizedBox(height: 20)
                  const SizedBox(height: 20),

                  // Text
                  const Text(
                    'Login to your account',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),

                  // SizedBox(height: 40)
                  const SizedBox(height: 40),

                  // Email -> TextFormField -> InputDecoration -> Validator
                  TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,

                    decoration: InputDecoration(
                      labelText: 'Email',
                      hintText: 'Enter your email',
                      prefixIcon: const Icon(
                        Icons.email_outlined,
                      ),

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),

                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                          color: Colors.deepPurple,
                          width: 2,
                        ),
                      ),
                    ),

                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Please enter your email';
                      }

                      if (!value.contains('@')) {
                        return 'Please enter a valid email';
                      }

                      return null;
                    },
                  ),

                  // SizedBox(height: 16)
                  const SizedBox(height: 16),

                  // Password -> TextFormField -> InputDecoration -> Validator
                  TextFormField(
                    controller: passwordController,
                    obscureText: obscurePassword,

                    decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter your password',

                      prefixIcon: const Icon(
                        Icons.lock_outline,
                      ),

                      suffixIcon: IconButton(
                        icon: Icon(
                          obscurePassword
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                        ),

                        onPressed: () {
                          setState(() {
                            obscurePassword = !obscurePassword;
                          });
                        },
                      ),

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),

                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                          color: Colors.deepPurple,
                          width: 2,
                        ),
                      ),
                    ),

                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      }

                      if (value.length < 6) {
                        return 'Password must be at least 6 characters';
                      }

                      return null;
                    },
                  ),

                  const SizedBox(height: 40),

                  // Login Button
                  SizedBox(
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        if (fromkey.currentState!.validate()) {
                          print('Email: ${emailController.text}');
                          print('Password: ${passwordController.text}');
                        }
                      },

                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple,
                        foregroundColor: Colors.white,

                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),

                      child: const Text(
                        'LOGIN',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}