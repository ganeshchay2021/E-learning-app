import 'package:e_learning_app/core/utils/validator.dart';
import 'package:e_learning_app/view/widgets/common/custom_button.dart';
import 'package:e_learning_app/view/widgets/common/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  TextEditingController emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
  }

  void _handleResetPassword() {
    if (_formKey.currentState!.validate()) {
      Get.dialog(
        AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.mark_email_read_outlined,
                size: 50,
                color: Colors.green,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Check your email",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "We have send password recovery instructions to your email",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                height: 55,
                text: ' ok ',
                onPressed: () {
                  Get.back();
                  emailController.clear();
                },
              )
            ],
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //app Bar
        appBar: AppBar(
          //back button
          leading: IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(Icons.arrow_back_ios),
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //title
                const Text(
                  "Forgot Password",
                  style: TextStyle(
                    fontSize: 32,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),

                //description
                const Text(
                  "Enter your email address to reset your password",
                  style: TextStyle(
                      fontSize: 16, letterSpacing: 1, color: Colors.grey),
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

                //button
                CustomButton(
                  text: "Reset Password",
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _handleResetPassword();
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
