import 'package:flutter/material.dart';
import 'package:flutterhero/Config/AssetsPath.dart';


class DrawerHeaderLogo extends StatelessWidget {
  const DrawerHeaderLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Image.asset(PhotosAssets.darkAppIcon),
    );
  }
}
