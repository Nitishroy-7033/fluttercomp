import 'package:flutterhero/Page/About/AboutUs.dart';
import 'package:flutterhero/Page/AppBar/AppBarPage.dart';
import 'package:flutterhero/Page/BottomNavigation/BottomNavigationPage.dart';
import 'package:flutterhero/Page/Buttons/ButtonsPage.dart';
import 'package:flutterhero/Page/Containers/ContainersPage.dart';
import 'package:flutterhero/Page/HomeData/HomePageData.dart';
import 'package:flutterhero/Page/splash/splash_page.dart';
import 'package:flutterhero/ViewComponents/InputFields/InputFields.dart';

import '../Page/InputFiels/InputFieldsPage.dart';

var pages = [
  //* Index = 0 => Home
  const HomePageData(),
  //* Index = 1 => Buttons
  const ButtonsPage(),
  //* Index = 2 => AppBar
  const AppBarPage(),
  //* Index = 3 => Bottom Navigation
  const BottomNavigationPage(),
  //* Index = 4 => Page Route
  const AboutUs(),
  //* Index = 5 => Input Field Page
  const InputFieldPage(),
  //* Index = 6 =>
  const Containerspage(),
  //* Index = 7 =>
  const InputFieldPage(),
  //* Index = 8 =>
  const Containerspage(),
  //* Index = 9 =>
  const SplashPage(),
  //* Index = 10 =>
  const SplashPage(),
  //* Index = 11 =>
  const SplashPage(),
];
