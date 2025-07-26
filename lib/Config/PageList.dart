import 'package:flutterhero/Page/About/AboutUs.dart';
import 'package:flutterhero/Page/AppBar/AppBarPage.dart';
import 'package:flutterhero/Page/BottomNavigation/BottomNavigationPage.dart';
import 'package:flutterhero/Page/Buttons/ButtonsPage.dart';
import 'package:flutterhero/Page/Containers/ContainersPage.dart';
import 'package:flutterhero/Page/HomeData/HomePageData.dart';
import 'package:flutterhero/Page/splash/splash_page.dart';
import 'package:flutterhero/ViewComponents/InputFields/InputFields.dart';

import '../Page/InputFiels/InputFieldsPage.dart';
import '../Page/align_and_padding/align_and_padding_page.dart';
import '../Page/animation/animation_page.dart';
import '../Page/card/card_sample_page.dart';
import '../Page/chip/chip_page.dart';
import '../Page/dialog/dialog_page.dart';
import '../Page/drawer/drawer.dart';
import '../Page/dropdown/dropdown_page.dart';
import '../Page/form/form.dart';
import '../Page/glassmorphic/glassmorphic_page.dart';
import '../Page/neomorphic/neomorphic_page.dart';
import '../Page/onboarding_page/onboarding_page.dart';
import '../Page/page_navigation/page_navigation.dart';
import '../Page/row_column/row_column_page.dart';
import '../Page/stack/stack_page.dart';
import '../Page/tabbar/TabbarPage.dart';
import '../ViewComponents/neomorphic/NeumorphicUI.dart';

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
  const PageNavigation(),
  // const AboutUs(),
  //* Index = 5 => Input Field Page
   const DrawerPage(),
  //* Index = 6 =>
 const  Tabbarpage(),
  //* Index = 7 =>
  const InputFieldPage(),
  //* Index = 8 =>

  //* Index = 9 =>
  const FormPage(),
  //* Index = 10 =>
 const DropdownPage(),
  // const SplashPage(),
  //* Index = 11 =>
  const SplashPage(),
 const OnboardingPage(),
  const RowColumnPage(),
  const stackPage(),
  const Containerspage(),
  const AlignAndPaddingPage(),
  const CardSamplePage(),
  const DialogPage(),
  const ChipPage(),
  const AnimationPage(),
  const glassmorphicPage(),
 const  NeoMorphicPage(),
];
