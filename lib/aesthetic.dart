import 'package:flutter/material.dart';

void main() {
  runApp(const AestheticD());
}

class AestheticD extends StatelessWidget {
  const AestheticD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    "Mount Bromo",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Jawa Timur, Indonesia',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.favorite,
            color: Colors.red[500],
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
          child: Text('4.8',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
          )
          ),
        ],
      ),
    );

  Color warna = Theme.of(context).primaryColor;
  Widget buttonSection = Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      _buildButtonColumn(warna, Icons.call, 'CALL'),
      _buildButtonColumn(warna, Icons.near_me, 'ROUTE'),
      _buildButtonColumn(warna, Icons.share, 'SHARE'),
    ],
  );

  Widget textSection = const Padding(
    padding: EdgeInsets.all(32),
    child: Text('This volcano, often surrounded by smoke and a multi-colored sky, ' 
    'has become one of the iconic sights of Indonesia. Watching the sunrise at Mount Bromo ' 
    'from Java Island is an unforgettable excursion.', 
    softWrap: true,
    textAlign: TextAlign.justify,
    ),
  );

  Widget textSection2 = const Padding(
    padding: EdgeInsets.fromLTRB(32, 0, 32, 0),
    child: Text('The volcano also shares the area with a vast desert, ' 
    'other lush mountains and hills, sweeping flower fields and some waterfalls, ' 
    'most of which can be explored in a day or two.', 
    softWrap: true,
    textAlign: TextAlign.justify,
    ),
  );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aesthetic Scenery', 
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  color: Colors.black,
                ),
          centerTitle: true,
          backgroundColor: Colors.green[400],
          title: const Text('Aesthetic Scenery'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'assets/gunung.jpg',
              width: 600,
              height: 180,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
            textSection2,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color warna, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: warna),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: warna,
            ),
          ),
        ),
      ],
    );
  }
}
