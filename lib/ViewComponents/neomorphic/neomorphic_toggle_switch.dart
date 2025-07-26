import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NeumorphicSwitch extends StatefulWidget {
  const NeumorphicSwitch({super.key});

  @override
  State<NeumorphicSwitch> createState() => _NeumorphicSwitchState();
}

class _NeumorphicSwitchState extends State<NeumorphicSwitch> {
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Toggle Switch"),
      ),
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      body: GestureDetector(
        onTap: () => setState(() => isOn = !isOn),
        child: Center(
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            width: 100,
            height: 50,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: const Color(0xFFE0E5EC),
              borderRadius: BorderRadius.circular(30),
              boxShadow: const [
                BoxShadow(color: Colors.white, offset: Offset(-4, -4), blurRadius: 10),
                BoxShadow(color: Color(0xFFA3B1C6), offset: Offset(4, 4), blurRadius: 10),
              ],
            ),
            child: Align(
              alignment: isOn ? Alignment.centerRight : Alignment.centerLeft,
              child: Container(
                width: 34,
                height: 34,
                decoration: BoxDecoration(
                  color: isOn ? Colors.greenAccent : Colors.redAccent,
                  shape: BoxShape.circle,
                  boxShadow: const [
                    BoxShadow(color: Colors.white, offset: Offset(-2, -2), blurRadius: 5),
                    BoxShadow(color: Color(0xFFA3B1C6), offset: Offset(2, 2), blurRadius: 5),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
