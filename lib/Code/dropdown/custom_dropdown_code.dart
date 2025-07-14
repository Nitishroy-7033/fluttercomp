String CustomDropdownCode='''


class Fruit {
  final String name;
  final String emoji;
  Fruit(this.name, this.emoji);
}

class ObjectDropdown extends StatefulWidget {
  const ObjectDropdown({super.key});

  @override
  State<ObjectDropdown> createState() => _ObjectDropdownState();
}

class _ObjectDropdownState extends State<ObjectDropdown> {
  final List<Fruit> fruits = [
    Fruit("Apple", "🍎"),
    Fruit("Banana", "🍌"),
    Fruit("Orange", "🍊"),
  ];

  Fruit? selectedFruit;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Custom Object Dropdown")),
      body: Center(
        child: DropdownButton<Fruit>(
          value: selectedFruit,
          hint: const Text("Pick a fruit"),
          items: fruits.map((fruit) {
            return DropdownMenuItem(
              value: fruit,
              child: Text("\${fruit.emoji} \${fruit.name}"),
            );
          }).toList(),
          onChanged: (value) {
            setState(() {
              selectedFruit = value;
            });
          },
        ),
      ),
    );
  }
}









''';