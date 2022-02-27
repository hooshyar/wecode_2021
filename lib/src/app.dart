import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:wecode_2021/src/constants/style.dart';
import 'package:wecode_2021/src/data_models/general_user.dart';
import 'package:wecode_2021/src/home_screen/home_screen_view.dart';

import 'package:wecode_2021/src/login_screen/login_screen_view.dart';

import 'package:wecode_2021/src/privacy_policy/privacy_policy_screen.dart';
import 'package:wecode_2021/src/profile_screens/create_profile_screen.dart';
import 'package:wecode_2021/src/registeration_screen/register_screen.dart';
import 'package:wecode_2021/src/services/auth_service.dart';
import 'package:wecode_2021/src/sql_plat/sql_test.dart';
import 'package:wecode_2021/src/student_dashboard/student_dashboard.dart';
import 'package:wecode_2021/src/student_screen/student_dashboard_screen.dart';
import 'package:wecode_2021/src/student_screen/student_linktree_view.dart';
import 'package:wecode_2021/src/student_screen/news_student_screen.dart';
import 'package:wecode_2021/src/trainers_screen/trainers_dashboard_screen_view.dart';
import 'package:wecode_2021/src/trainers_screen/trainers_list_of_news.dart';
import 'package:wecode_2021/src/widgets/auth_handler.dart';
import 'package:get/get.dart';

class AppView extends StatelessWidget {
  const AppView({Key? key}) : super(key: key);
  final String selectedLang = 'ar';
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(),
      theme: ThemeData(
        primaryColor: mainColor,
        appBarTheme: const AppBarTheme(
          backgroundColor: mainColor,
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

      // theme: ThemeData.dark(),
      initialRoute: '/',
      // initialRoute: '/trainersScreen',
      routes: {
        '/': (context) => AuthHandler(), //this has to be the Auth handler
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
        '/createProfileScreen': (context) => CreateProfileScreen(),
        '/homeScreenView': (context) => HomeScreenView(),

        '/privacyPolicyScreen': (context) => const PrivacyPolicyScreen(),
        '/studentDashboard': (context) => StudentDashboardScreen(),
      },
    );
  }
}
