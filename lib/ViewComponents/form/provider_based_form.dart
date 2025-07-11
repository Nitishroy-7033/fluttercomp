import 'package:flutter/material.dart';
import 'package:flutterhero/ViewComponents/form/provider/form_provider.dart';
import 'package:provider/provider.dart';

class ProviderForm extends StatefulWidget {
  const ProviderForm({super.key});

  @override
  State<ProviderForm> createState() => _ProviderFormState();
}

class _ProviderFormState extends State<ProviderForm> {
  late TextEditingController controller;

  @override
  void initState() {
    super.initState();
    final provider = Provider.of<FormProvider>(context, listen: false);
    controller = TextEditingController(text: provider.name);

    // Optional: listen to controller changes and update provider
    controller.addListener(() {
      provider.updateName(controller.text);
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FormProvider>(context);

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,

      appBar: AppBar(title: const Text("Provider Form")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(labelText: "Name"),
            ),
            const SizedBox(height: 20),
            Text("Live Preview: ${provider.name}"),
          ],
        ),
      ),
    );
  }
}
