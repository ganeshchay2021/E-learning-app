import 'package:e_learning_app/core/theme/app_colors..dart';
import 'package:e_learning_app/core/utils/validator.dart';
import 'package:e_learning_app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/custom_button.dart';
import '../../widgets/custom_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            //top wave design
            Container(
              height: size.height * 0.3,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(100),
                ),
                gradient: LinearGradient(
                  colors: [
                    AppColors.primary.withOpacity(0.9),
                    AppColors.primary.withOpacity(0.8)
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //school icon
                    Icon(
                      Icons.school,
                      size: 50,
                      color: AppColors.lightSurface,
                    ),

                    SizedBox(height: 15),
                    //title
                    Text(
                      "Welcome Back!",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    //email field
                    CustonTextField(
                      textInputType: TextInputType.emailAddress,
                      focusNode: FocusNode(),
                      controller: emailController,
                      labelText: 'Email',
                      prefixIcon: Icons.email,
                      validator: FormValidator.validateEmail,
                    ),

                    const SizedBox(height: 25),

                    //password Field
                    CustonTextField(
                      controller: passwordController,
                      focusNode: FocusNode(),
                      obscureText: true,
                      labelText: 'Password',
                      prefixIcon: Icons.lock_outline,
                      isPasswordField: true,
                      validator: FormValidator.validatePassword,
                    ),

                    const SizedBox(height: 10),

                    //forgot password
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          Get.toNamed(AppRoutes.forgotPassword);
                        },
                        child: Text(
                          "Forgot Password?",
                          style:
                              TextStyle(color: Theme.of(context).primaryColor),
                        ),
                      ),
                    ),

                    CustomButton(
                      text: 'Login',
                      onPressed: () {
                        if(_formKey.currentState!.validate()){
                          
                        }
                      },
                    ),

                    const SizedBox(
                      height: 25,
                    ),

                    Row(
                      children: [
                        Expanded(
                          child: Divider(
                            color: Colors.grey.shade300,
                          ),
                        ),
                        const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text('Or continue with')),
                        Expanded(
                          child: Divider(
                            color: Colors.grey.shade300,
                          ),
                        )
                      ],
                    ),

                    const SizedBox(
                      height: 25,
                    ),

                    //social login
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _socialLoginButton(
                          icon: Icons.g_mobiledata,
                          onPressed: () {},
                        ),
                        _socialLoginButton(
                          icon: Icons.facebook,
                          onPressed: () {},
                        ),
                        _socialLoginButton(
                          icon: Icons.apple,
                          onPressed: () {},
                        ),
                      ],
                    ),

                    const SizedBox(
                      height: 20,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have account?",
                          style:
                              TextStyle(color: Theme.of(context).primaryColor),
                        ),
                        TextButton(
                          onPressed: () {
                            Get.toNamed(AppRoutes.signup);
                          },
                          child: Text(
                            "Register",
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _socialLoginButton(
      {required IconData icon, required VoidCallback onPressed}) {
    return CustomButton(
      isOutlined: true,
      height: 50,
      isFullWidth: false,
      icon: icon,
      text: '',
      onPressed: onPressed,
    );
  }
}
