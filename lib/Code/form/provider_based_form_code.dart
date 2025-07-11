String ProviderBasedFormCode='''



import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'form_provider.dart';

class ProviderForm extends StatelessWidget {
  const ProviderForm({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FormProvider>(context);
    final controller = TextEditingController(text: provider.name);

    return Scaffold(
      appBar: AppBar(title: const Text("Provider Form")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(labelText: "Name"),
              onChanged: (val) => provider.updateName(val),
            ),
            const SizedBox(height: 20),
            Text("Live Preview: \${provider.name}"),
          ],
        ),
      ),
    );
  }
}






''';

String providerdep='''



provider: ^6.1.5



''';

String FormProviderCode='''

import 'package:flutter/material.dart';

class FormProvider with ChangeNotifier {
  String _name = '';
  String get name => _name;

  void updateName(String value) {
    _name = value;
    notifyListeners();
  }
}






''';