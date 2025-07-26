// import 'package:flutter/material.dart';
// import 'package:flutter_masonry_view/flutter_masonry_view.dart';
// import 'package:flutterhero/ComponentsList/BottomNavigation/BottomNavigation.dart';
// import 'package:flutterhero/ComponentsList/InputField/InputField.dart';
//
// import '../../ComponentsList/neomorphic/neomorphic_list.dart';
// import '../../Config/AssetsPath.dart';
// import '../../Widgets/PageAppBar.dart';
// import '../../Widgets/ResponsiveLayout.dart';
//
// class NeoMorphicPage extends StatelessWidget {
//   const NeoMorphicPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final isDesktop = Responsive.isDesktop(context);
//     var contributerList = [
//       "https://avatars.githubusercontent.com/u/148624421?v=4",
//       "https://avatars.githubusercontent.com/u/79355266?v=4&size=64",
//       "https://avatars.githubusercontent.com/u/28752850?s=48&v=4",
//     ];
//     return Column(
//       children: [
//         PageAppBar(
//           pageName: "Neomorphic Section",
//           contributerNumber: "10",
//           contributerImages: contributerList,
//           icon: IconsAssets.textfield,
//         ),
//         const SizedBox(height: 20),
//         MasonryView(
//           listOfItem: neoMorphicList,
//           itemBuilder: (item) => item,
//           numberOfColumn: isDesktop ? 2 : 1,
//           itemPadding: 4,
//           itemRadius: 10,
//         ),
//       ],
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:flutter_masonry_view/flutter_masonry_view.dart';
import 'package:flutterhero/Config/AssetsPath.dart';
import 'package:flutterhero/Widgets/PageAppBar.dart';
import 'package:flutterhero/Widgets/ResponsiveLayout.dart';

import '../../ComponentsList/neomorphic/neomorphic_list.dart';
import '../../ComponentsList/row_column/row_column_list.dart';
import '../../ComponentsList/stack/stack_list.dart';

class NeoMorphicPage extends StatelessWidget {
  const NeoMorphicPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);
    var contributerList = [
      "https://avatars.githubusercontent.com/u/148624421?v=4",
      "https://avatars.githubusercontent.com/u/79355266?v=4&size=64",
      "https://avatars.githubusercontent.com/u/28752850?s=48&v=4",
    ];
    return Column(
      children: [
        PageAppBar(
          pageName: "Neomorphic Section",
          contributerNumber: "10",
          contributerImages: contributerList,
          icon: IconsAssets.moon,
        ),
        const SizedBox(height: 20),
        MasonryView(
          listOfItem: neoMorphicList,
          itemBuilder: (item) => item,
          numberOfColumn: isDesktop ? 2 : 1,
          itemPadding: 4,
          itemRadius: 10,
        ),
      ],
    );
  }
}