import 'main_page.dart';
import 'profile_page.dart';

final routes = {
  'home': (context) => const MainPage(title: 'Halaman Beranda'),
  'second': (context) => const ProfilePage(),
};