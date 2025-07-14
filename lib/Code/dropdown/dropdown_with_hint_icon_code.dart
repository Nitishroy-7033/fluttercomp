String dropdownwithIconCode='''

class StyledDropdown extends StatefulWidget {
  const StyledDropdown({super.key});

  @override
  State<StyledDropdown> createState() => _StyledDropdownState();
}

class _StyledDropdownState extends State<StyledDropdown> {
  String? selected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Styled Dropdown")),
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.deepPurple),
            borderRadius: BorderRadius.circular(8),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: selected,
              isExpanded: true,
              hint: const Text(
                "Select Fruit",
                style: TextStyle(color: Colors.grey),
              ),
              icon: const Icon(Icons.arrow_drop_down, color: Colors.deepPurple),
              style: const TextStyle(
                color: Colors.deepPurple,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              items: ['Apple', 'Banana', 'Cherry']
                  .map((item) => DropdownMenuItem(
                        value: item,
                        child: Row(
                          children: [
                            Icon(Icons.circle, size: 10, color: Colors.purple),
                            const SizedBox(width: 10),
                            Text(item),
                          ],
                        ),
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  selected = value;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}

''';