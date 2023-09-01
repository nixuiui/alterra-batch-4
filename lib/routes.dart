import 'package:alterra_batch_4/pages/course_detail_page.dart';
import 'package:alterra_batch_4/pages/setting_page.dart';
import 'package:alterra_batch_4/pages/webview_page.dart';

import 'pages/course_list_page.dart';
import 'pages/main_page.dart';

class AppRoutes {

  static const home = 'home';
  static const courseList = 'course-list';
  static const setting = 'setting';
  static const courseDetail = 'course-detail';
  static const webview = 'webview';

}

final routes = {
  AppRoutes.home: (context) => const MainPage(title: 'Halaman Beranda'),
  AppRoutes.setting: (context) => const SettingPage(),
  AppRoutes.courseList: (context) => const ProfilePage(),
  AppRoutes.courseDetail: (context) => const CourseDetailPage(),
  AppRoutes.webview: (context) => const WebviewPage(),
};