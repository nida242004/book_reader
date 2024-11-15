import 'package:book_reader/screens/pdf_viewer_screen.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class HomeScreen extends StatelessWidget {
  void _pickPDF(BuildContext context) async {
    FilePickerResult? result = await FilePicker.platform
        .pickFiles(type: FileType.custom, allowedExtensions: ['pdf']);

    if (result != null) {
      String? filePath = result.files.single.path;
      if (filePath != null) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PDFViewerScreen(filePath: filePath),
          ),
        );
      }
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('No file selected')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Novel Reader')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _pickPDF(context),
          child: const Text('Upload PDF'),
        ),
      ),
    );
  }
}
