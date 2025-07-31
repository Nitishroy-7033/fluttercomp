import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter/services.dart';

class ColorPickerFullScreen extends StatefulWidget {
  @override
  _ColorPickerFullScreenState createState() => _ColorPickerFullScreenState();
}

class _ColorPickerFullScreenState extends State<ColorPickerFullScreen> {
  Color selectedColor = Colors.teal;

  void openColorPicker() {
    Color tempColor = selectedColor;

    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Pick a color'),
        content: SingleChildScrollView(
          child: ColorPicker(
            pickerColor: selectedColor,
            onColorChanged: (color) => tempColor = color,
            enableAlpha: true,
            labelTypes: const [
              ColorLabelType.rgb,
              ColorLabelType.hsv,
              ColorLabelType.hsl,
              ColorLabelType.hex,
            ],
            pickerAreaHeightPercent: 0.7,
            displayThumbColor: true,
            paletteType: PaletteType.hsvWithHue,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              setState(() => selectedColor = tempColor);
              Navigator.pop(context);
            },
            child: const Text('Done'),
          ),
        ],
      ),
    );
  }

  String getHexCode(Color color) {
    return '#${color.value.toRadixString(16).padLeft(8, '0').toUpperCase().substring(2)}';
  }

  void copyToClipboard(String text) {
    Clipboard.setData(ClipboardData(text: text));
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Copied $text to clipboard'),
        duration: const Duration(seconds: 1),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final hexCode = getHexCode(selectedColor);

    return Scaffold(

      appBar: AppBar(
        title: const Text("Full Color Picker UI"),

        centerTitle: true,
      ),
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Color Preview
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                color: selectedColor,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.black12, width: 2),
              ),
              child: Center(
                child: Text(
                  'Preview',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: useWhiteForeground(selectedColor) ? Colors.white : Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // HEX Code with copy
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  hexCode,
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                IconButton(
                  icon: const Icon(Icons.copy),
                  tooltip: 'Copy HEX Code',
                  onPressed: () => copyToClipboard(hexCode),
                )
              ],
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: openColorPicker,
              style: ElevatedButton.styleFrom(
                backgroundColor: selectedColor,
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              ),
              child:  Text(
                "Pick Color",
                style: TextStyle(fontSize: 16,
                color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
