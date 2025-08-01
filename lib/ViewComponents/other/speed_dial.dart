import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class SpeedDialScreen extends StatelessWidget {
  const SpeedDialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,

      appBar: AppBar(title: const Text("Speed Dial")),
      floatingActionButton: SpeedDial(
        icon: Icons.menu,
        activeIcon: Icons.close,
        children: [
          SpeedDialChild(
            child: const Icon(Icons.share),
            label: "Share",
            onTap: () => debugPrint("Share tapped"),
          ),
          SpeedDialChild(
            child: const Icon(Icons.message),
            label: "Message",
            onTap: () => debugPrint("Message tapped"),
          ),
        ],
      ),
      body: const Center(child: Text("Floating Action Menu")),
    );
  }
}
