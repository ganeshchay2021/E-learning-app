import 'package:e_learning_app/bloc/font_bloc.dart';
import 'package:e_learning_app/bloc/font_state.dart';
import 'package:e_learning_app/core/theme/app_theme.dart';
import 'package:e_learning_app/routes/app_routes.dart';
import 'package:e_learning_app/routes/route_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FontBloc(),
        )
      ],
      child: BlocBuilder<FontBloc, FontState>(
        builder: (context, fontState) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: "E-Learning App",
            theme: AppTheme.getLightTheme(fontState),
            themeMode: ThemeMode.light,
            initialRoute: AppRoutes.splash,
            onGenerateRoute: AppRoutes.onGenerateRoute,
            getPages: AppPages.pgaes,
          );
        },
      ),
    );
  }
}
