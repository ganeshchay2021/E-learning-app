import 'package:e_learning_app/services/dummy_data_Services.dart';
import 'package:flutter/material.dart';

import '../../models/category_model.dart';
import 'widget/category_section.dart';
import 'widget/home_app_bar.dart';
import 'widget/search_bar_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<CategoryModel> category = [
    CategoryModel(
      id: '1',
      name: 'Programming',
      icon: Icons.code,
      courseCount: DummyDataServices.getCoursesByCategory('1').length,
    ),
    CategoryModel(
      id: '2',
      name: 'Design',
      icon: Icons.brush,
      courseCount: DummyDataServices.getCoursesByCategory('2').length,
    ),
    CategoryModel(
      id: '3',
      name: 'Business',
      icon: Icons.business,
      courseCount: DummyDataServices.getCoursesByCategory('3').length,
    ),
    CategoryModel(
      id: '4',
      name: 'Music',
      icon: Icons.music_note,
      courseCount: DummyDataServices.getCoursesByCategory('4').length,
    ),
    CategoryModel(
      id: '5',
      name: 'Photography',
      icon: Icons.camera_alt,
      courseCount: DummyDataServices.getCoursesByCategory('5').length,
    ),
    CategoryModel(
      id: '6',
      name: 'Language',
      icon: Icons.language,
      courseCount: DummyDataServices.getCoursesByCategory('6').length,
    ),
    CategoryModel(
      id: '7',
      name: 'Health and Fitness',
      icon: Icons.fitness_center,
      courseCount: DummyDataServices.getCoursesByCategory('7').length,
    ),
    CategoryModel(
      id: '8',
      name: 'Personal Development',
      icon: Icons.psychology,
      courseCount: DummyDataServices.getCoursesByCategory('8').length,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const HomeAppBar(),
          SliverPadding(
            padding: const EdgeInsets.all(20),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  const SearchBarWidget(),
                  const SizedBox(
                    height: 32,
                  ),
                  CategorySection(
                    category: category,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
