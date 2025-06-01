import 'package:e_learning_app/routes/app_routes.dart';
import 'package:e_learning_app/view/auth/forgot_password.dart';
import 'package:e_learning_app/view/auth/login_screen.dart';
import 'package:e_learning_app/view/auth/sign_up_screen.dart';
import 'package:e_learning_app/view/courses/widget/course_list_screen.dart';
import 'package:e_learning_app/view/home/home_Screen.dart';
import 'package:e_learning_app/view/teacher/teacher_home_screen.dart';
import 'package:e_learning_app/view/onboarding/onboarding_screen.dart';
import 'package:e_learning_app/view/profile/profile_screen.dart';
import 'package:e_learning_app/view/quiz/quiz_list_screen.dart';
import 'package:e_learning_app/view/splash/splash.dart';
import 'package:e_learning_app/view/widgets/main_screen.dart';
import 'package:get/get.dart';

class AppPages {
  static final List<GetPage> pgaes = [
    GetPage(
      name: AppRoutes.splash,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: AppRoutes.login,
      page: () => const LoginScreen(),
    ),
    GetPage(
      name: AppRoutes.onBoarding,
      page: () => const OnboardingScreen(),
    ),
    GetPage(
      name: AppRoutes.signup,
      page: () => const SignUpScreen(),
    ),
    GetPage(
      name: AppRoutes.forgotPassword,
      page: () => const ForgotPasswordScreen(),
    ),
    GetPage(
      name: AppRoutes.teacherHome,
      page: () => const TeacherHomeScreen(),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => const HomeScreen(),
    ),
    GetPage(
      name: AppRoutes.mainScreen,
      page: () => MainScreen(
        initialIndex: Get.arguments is Map<String, dynamic>
            ? Get.arguments['initialIndex'] as int?
            : null,
      ),
    ),
    GetPage(
      name: AppRoutes.courseList,
      page: () => const CourseListScreen(),
    ),
    GetPage(
      name: AppRoutes.quizList,
      page: () => const QuizListScreen(),
    ),
    GetPage(
      name: AppRoutes.profile,
      page: () => const ProfileScreen(),
    ),
  ];
}
