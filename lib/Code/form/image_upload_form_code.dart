String ImageUploadFormCode='''



// file_upload_form.dart
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class FileUploadForm extends StatefulWidget {
  const FileUploadForm({super.key});

  @override
  State<FileUploadForm> createState() => _FileUploadFormState();
}

class _FileUploadFormState extends State<FileUploadForm> {
  File? _image;

  Future pickImage() async {
    final picked = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (picked != null) {
      setState(() {
        _image = File(picked.path);
      });
    }
  }

  void submit() {
    if (_image == null) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Pick an image first")));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Image uploaded")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("File Upload Form")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            _image != null
                ? Image.file(_image!, height: 200)
                : const Text("No image selected"),
            ElevatedButton(onPressed: pickImage, child: const Text("Pick Image")),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: submit, child: const Text("Submit")),
          ],
        ),
      ),
    );
  }
}









''';

String ImageDependenciesCode='''


image_picker: ^1.1.2

''';