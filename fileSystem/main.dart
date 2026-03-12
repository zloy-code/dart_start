import 'dart:io';

void main() async{
    // Create a new file
    var file = File('example.txt');
    await file.create();

    print('File created: ${file.path}');

    // Write to the file
    await file.writeAsString('Hello, Dart!');
    print('Data written to file.');

    // Read from the file
    String contents = await file.readAsString();
    print('File contents: $contents');
    // Delete the file
    await file.delete();
    print('File deleted.');

}