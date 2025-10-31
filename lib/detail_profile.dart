import 'package:flutter/material.dart';

class DetailProfile extends StatelessWidget {
  final title;

  const DetailProfile({this.title,super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail $title'),
        backgroundColor: Colors.amberAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                /**
                 * Navigator.pop() untuk close halaman
                 */
                Navigator.pop(context);
              },
              child: Text('Back'),
            ),
            Text('Ini Halaman Detail'),
          ],
        ),
      ),
    );
  }
}
