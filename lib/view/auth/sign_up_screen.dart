import 'package:e_learning_app/core/theme/app_colors..dart';
import 'package:e_learning_app/core/utils/validator.dart';
import 'package:e_learning_app/models/user_model.dart';
import 'package:e_learning_app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_textfield_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  UserRole? _selectedRole;

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    nameController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
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
                height: size.height * 0.25,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(100),
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
                child: Stack(
                  children: [
                    //back button
                    Positioned(
                      top: 50,
                      left: 20,
                      child: IconButton(
                          onPressed: () => Get.back(),
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          )),
                    ),
                    const Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //title
                          Text(
                            "Create Account",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),

                          Text(
                            "Start your learning journey",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white70),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),

            Padding(
              padding: const EdgeInsets.all(20),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    // Name field
                    CustonTextField(
                      controller: nameController,
                      labelText: 'Name',
                      focusNode: FocusNode(),
                      prefixIcon: Icons.person_outline,
                      validator: FormValidator.validateFullName,
                    ),

                    const SizedBox(height: 25),

                    //email field
                    CustonTextField(
                      focusNode: FocusNode(),
                      controller: emailController,
                      labelText: 'Email',
                      prefixIcon: Icons.email_outlined,
                      validator: FormValidator.validateEmail,
                    ),

                    const SizedBox(height: 25),

                    //password Field
                    CustonTextField(
                      focusNode: FocusNode(),
                      controller: passwordController,
                      labelText: 'Password',
                      prefixIcon: Icons.lock_outline,
                      obscureText: true,
                      validator: FormValidator.validatePassword,
                    ),
                    const SizedBox(height: 25),

                    //password Field
                    CustonTextField(
                      focusNode: FocusNode(),
                      obscureText: true,
                      controller: confirmPasswordController,
                      labelText: 'Confirm Password',
                      prefixIcon: Icons.lock_outline,
                      validator: (value) {
                        return FormValidator.validateConfirmPassword(
                            value, passwordController.text);
                      },
                    ),
                    const SizedBox(
                      height: 25,
                    ),

                    DropdownButtonFormField<UserRole>(
                      value: _selectedRole,
                      decoration: InputDecoration(
                        labelText: 'Role',
                        prefixIcon: const Icon(Icons.person_outline),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(color: Colors.grey.shade300)),
                      ),
                      items: UserRole.values.map((role) {
                        return DropdownMenuItem(
                            value: role,
                            child: Text(
                                role.toString().split('.').last.capitalize!));
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          _selectedRole = value;
                        });
                      },
                    ),

                    const SizedBox(height: 25),

                    CustomButton(
                      text: 'Sign Up',
                      onPressed: _handleSignUp,
                    ),

                    const SizedBox(
                      height: 20,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account?",
                          style:
                              TextStyle(color: Theme.of(context).primaryColor),
                        ),
                        TextButton(
                          onPressed: () {
                            Get.back();
                          },
                          child: Text(
                            "Login",
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

  void _handleSignUp() {
    if (_formKey.currentState!.validate() && _selectedRole != null) {
      if (_selectedRole == UserRole.teacher) {
        //navigate to teacher's home screen
        Get.offAllNamed(AppRoutes.teacherHome);
      } else {
        //navigate to student's home screen
        Get.offAllNamed(AppRoutes.home);
      }
    } else if (_selectedRole == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          duration: Duration(seconds: 1),
          content: Text("Please select your role"),
          backgroundColor: Colors.red,
        ),
      );
    }
  }
}
