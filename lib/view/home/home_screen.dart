import 'package:e_learning_app/services/dummy_data_Services.dart';
import 'package:flutter/material.dart';
import 'widget/category_section.dart';
import 'widget/home_app_bar.dart';
import 'widget/in_progress_section.dart';
import 'widget/search_bar_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  const InProgressSection(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
