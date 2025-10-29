import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  final List<String> badgeList = const <String>[
    '😎',
    '🤠',
    '🏫',
    '📖',
    '🧑‍🎓',
    '🧑‍⚕️',
    '🦸',
    '🤮',
    '🥊',
    '😭',
  ];

  // ignore: slash_for_doc_comments
  /**
   * Tampilkan Data Image dari internet menggunakan listView
   * buat image nya menjadi bentuk lingkaran
   */

  final List<String> imageOnline = const <String>[
    'https://images.unsplash.com/photo-1704340142770-b52988e5b6eb?ixlib=rb-4.1.0&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=2000',
    'https://images.unsplash.com/photo-1459603677915-a62079ffd002?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=2134',
    'https://plus.unsplash.com/premium_photo-1683134240084-ba074973f75e?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=1595',
    'https://images.unsplash.com/photo-1583121274602-3e2820c69888?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=1170',
    'https://images.unsplash.com/photo-1506610654-064fbba4780c?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=1170',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Me', style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.amberAccent,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              // Bisa pakai image.asset(=Nama Image=)
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage('assets/Foto.png'),
              ),

              /** Text Name */
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Aqilalthaf'.toUpperCase(),
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Barriecito',
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer enim est, fringilla sit amet convallis at, consectetur eu dolor. Morbi accumsan metus id lectus mattis, eget consequat turpis porta. Praesent justo ipsum, fermentum a pharetra eget, tristique in velit. Donec id facilisis tellus. Vestibulum auctor porttitor magna. Nunc feugiat dolor nec justo ultricies, id bibendum justo dignissim. Sed lorem sapien, tristique non lectus commodo, pulvinar ultrices urna. Mauris sit amet tellus tempor, porttitor ligula sit amet, pretium augue. Maecenas rhoncus lectus vel quam sollicitudin, quis consequat neque accumsan. Maecenas vel diam id dui consectetur fermentum. Proin neque magna, dignissim quis velit vitae, convallis euismod lectus. Fusce ac eleifend magna. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.',
                style: TextStyle(fontFamily: 'Barriecito'),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.amberAccent,
                          borderRadius: BorderRadius.circular(20),

                          boxShadow: [
                            BoxShadow(
                              blurRadius: 2,
                              offset: Offset(2, 3),
                              color: Colors.grey,
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.greenAccent,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Icon(
                                Icons.gamepad,
                                size: 75,
                                color: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 4.0,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'GAME PROJECTS',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Barriecito',
                                    ),
                                  ),
                                  Text('10 Games'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.amberAccent,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.grey, width: 2),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 2,
                              offset: Offset(2, 3),
                              color: Colors.grey,
                            ),
                          ],
                        ),
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: 75,
                              height: 75,
                              decoration: BoxDecoration(
                                color: Colors.greenAccent,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Icon(
                                Icons.android,
                                color: Colors.white,
                                size: 50,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Android Projects',
                                    style: TextStyle(
                                      fontFamily: 'Barriecito',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text('10 APK'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.black),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Center(
                    child: Text(
                      'Schadule'.toUpperCase(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Barriecito',
                        fontSize: 18,
                        letterSpacing: 5,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              // Row Schadule
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        // ==== width: double.infinity = Ngasih lebar full
                        decoration: BoxDecoration(
                          color: Colors.greenAccent,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            // ==== Belajar
                            children: <Widget>[
                              Text(
                                'Belajar',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Barriecito',
                                ),
                              ),
                              Icon(Icons.timer, size: 30),
                              Text(
                                '07.30 - 14.30',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  // ==== Membaca
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.greenAccent,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'MEMBACA',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Barriecito',
                                ),
                              ),
                            ),
                            Icon(Icons.book, size: 30),
                            Text(
                              '20.00 - 21.00',
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // ==== Tidur
                  Expanded(
                    flex: 4,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Tidur',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Barriecito',
                              ),
                            ),
                            Icon(Icons.bed, size: 30),
                            Text(
                              '21.30 - 3.15',
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.cyanAccent),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    'BADGES',
                    style: TextStyle(
                      fontFamily: 'Barriecito',
                      letterSpacing: 5,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(
                height: 110,
                child: ListView(
                  /**
                   * badgesList = Variable list di atas
                   * element (e) = nama Variable dari map
                   * return = tempat widget dari data list
                   */
                  scrollDirection: Axis.horizontal,
                  children: badgeList.map((e) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text('${e}', style: TextStyle(fontSize: 60)),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
              SizedBox(
                height: 110,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: imageOnline.map((i) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: 100,
                        height: 100,
                        
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(i),
                          radius: 50,
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
              SizedBox(
                height: 110,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: imageOnline.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                          '${imageOnline[index]}'
                          ),
                          radius: 50,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
