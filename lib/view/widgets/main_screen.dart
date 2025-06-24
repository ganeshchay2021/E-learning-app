// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:e_learning_app/bloc/navigation/navigation_bloc.dart';
import 'package:e_learning_app/view/courses/course_list_screen.dart';
import 'package:e_learning_app/view/home/home_screen.dart';
import 'package:e_learning_app/view/profile/profile_screen.dart';
import 'package:e_learning_app/view/quiz/quiz_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/theme/app_colors..dart';

class MainScreen extends StatefulWidget {
  final int? initialIndex;
  const MainScreen({
    super.key,
    this.initialIndex,
  });

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> pages = [
    const HomeScreen(),
    const CourseListScreen(),
    const QuizListScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavigationBloc()
        ..add(
          NavigateToTab(
            index: widget.initialIndex ?? 0,
          ),
        ),
      child: BlocBuilder<NavigationBloc, NavigationState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: AppColors.lightBackground,
            body: IndexedStack(
              index: state.index,
              children: pages,
            ),
            bottomNavigationBar: NavigationBar(
              backgroundColor: AppColors.accent,
              indicatorColor: AppColors.primary.withOpacity(0.1),
              selectedIndex: state.index,
              onDestinationSelected: (value) {
                context.read<NavigationBloc>().add(
                      NavigateToTab(index: value),
                    );
              },
              destinations: const [
                NavigationDestination(
                    icon: Icon(Icons.home_outlined), label: "Home"),
                NavigationDestination(
                    icon: Icon(Icons.play_lesson_outlined),
                    label: "My Courses"),
                NavigationDestination(
                    icon: Icon(Icons.quiz_outlined), label: "Quizzes"),
                NavigationDestination(
                    icon: Icon(Icons.person_outline), label: "Profile"),
              ],
            ),
          );
        },
      ),
    );
  }
}
