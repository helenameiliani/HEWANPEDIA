import 'package:flutter/material.dart';

class Animal {
  final String name;
  final String description;
  final String imagePath;
  final String fullDescription;

  Animal({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.fullDescription,
  });
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  final List<Animal> animals = [
    Animal(
      name: 'Beruang',
      description: 'Beruang adalah mamalia besar yang biasanya hidup di hutan.',
      imagePath: 'images/beruang.jpg',
      fullDescription:
          'Beruang adalah mamalia besar yang biasanya hidup di hutan dan pegunungan. Mereka memiliki bulu yang lebat dan bisa berwarna cokelat, hitam, atau putih. Beruang adalah pemakan omnivora dan memiliki kemampuan berhibernasi saat musim dingin. Mereka memiliki kekuatan luar biasa dan dapat hidup hingga 30 tahun di alam liar.',
    ),
    Animal(
      name: 'Ayam',
      description:
          'Ayam adalah unggas peliharaan yang biasa ditemukan di peternakan.',
      imagePath: 'images/ayam.jpg',
      fullDescription:
          'Ayam adalah unggas peliharaan yang banyak ditemukan di peternakan di seluruh dunia. Ayam betina bertelur dan ayam jantan terkenal dengan suara kokoknya. Mereka adalah sumber makanan penting, baik telur maupun dagingnya. Ayam memiliki variasi jenis yang banyak, seperti ayam ras pedaging dan petelur.',
    ),
    Animal(
      name: 'Singa',
      description: 'Singa dikenal sebagai raja hutan.',
      imagePath: 'images/singa.jpg',
      fullDescription:
          'Singa dikenal sebagai "raja hutan", meskipun mereka hidup di padang rumput dan sabana. Singa adalah karnivora sosial yang hidup dalam kelompok yang disebut kawanan. Mereka terkenal karena taringnya yang tajam dan kemampuan berburu yang terorganisir. Singa jantan biasanya memiliki surai besar yang membedakannya dari betina.',
    ),
    Animal(
      name: 'Harimau',
      description:
          'Harimau adalah kucing besar dengan pola garis hitam dan oranye.',
      imagePath: 'images/harimau.jpg',
      fullDescription:
          'Harimau adalah kucing besar yang dikenal dengan pola garis hitam dan oranye pada tubuhnya. Mereka adalah predator puncak di hutan dan memiliki kekuatan serta kecepatan luar biasa. Harimau biasanya hidup soliter dan berburu di malam hari. Mereka tersebar di Asia, dari India hingga Siberia.',
    ),
    Animal(
      name: 'Elang',
      description: 'Elang adalah burung pemangsa dengan penglihatan tajam.',
      imagePath: 'images/elang.jpg',
      fullDescription:
          'Elang adalah burung pemangsa yang terkenal dengan penglihatan tajamnya, mampu melihat mangsa dari jarak yang sangat jauh. Mereka memiliki cakar yang kuat dan paruh yang tajam untuk memangsa hewan-hewan kecil hingga sedang. Elang biasanya ditemukan di pegunungan dan daerah terbuka.',
    ),
    Animal(
      name: 'Orangutan',
      description: 'Orangutan adalah primata besar yang hidup di hutan tropis.',
      imagePath: 'images/orangutan.jpg',
      fullDescription:
          'Orangutan adalah primata besar yang hidup di hutan tropis di Indonesia dan Malaysia, terutama di Kalimantan dan Sumatra. Mereka terkenal dengan kecerdasannya dan kemampuan menggunakan alat untuk bertahan hidup. Orangutan adalah spesies yang terancam punah karena kehilangan habitat dan perburuan liar.',
    ),
    Animal(
      name: 'Gajah',
      description: 'Gajah adalah mamalia darat terbesar di dunia.',
      imagePath: 'images/gajah.jpg',
      fullDescription:
          'Gajah adalah mamalia darat terbesar yang ada di dunia. Mereka memiliki belalai yang panjang, yang digunakan untuk mengambil makanan dan air, serta telinga besar yang membantu mengatur suhu tubuh. Gajah hidup dalam kelompok yang terorganisir dan memiliki ingatan yang luar biasa. Mereka ditemukan di Afrika dan Asia.',
    ),
    Animal(
      name: 'Rusa',
      description: 'Rusa adalah hewan berkuku dengan tanduk bercabang.',
      imagePath: 'images/rusa.jpg',
      fullDescription:
          'Rusa adalah hewan berkuku yang biasanya ditemukan di hutan dan padang rumput. Mereka dikenal dengan tanduk bercabang yang dimiliki oleh jantan, yang digunakan dalam pertempuran untuk menarik betina. Rusa adalah pemakan tumbuhan dan sering terlihat merumput pada pagi atau senja hari.',
    ),
  ];

  final List<String> articles = [
    'Artikel 1: Tentang Hewan Beruang',
    'Artikel 2: Konservasi Alam',
    'Artikel 3: Pemeliharaan Hewan Peliharaan',
    'Artikel 4: Peran Hewan dalam Ekosistem',
    'Artikel 5: Memahami Keanekaragaman Hayati'
  ];

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HEWANPEDIA')),
      body: currentIndex == 0
          ? ListView.builder(
              itemCount: animals.length,
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.blue[100],
                  margin: EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Icon(Icons.pets, color: Colors.black54),
                    title: Text(
                      animals[index].name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(animals[index].description),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              AnimalDetailPage(animal: animals[index]),
                        ),
                      );
                    },
                  ),
                );
              },
            )
          : currentIndex == 1
              ? ListView.builder(
                  itemCount: articles.length,
                  itemBuilder: (context, index) {
                    return Card(
                      color: Colors.blue[100],
                      margin: EdgeInsets.all(8.0),
                      child: ListTile(
                        leading: Icon(Icons.book, color: Colors.black54),
                        title: Text(
                          articles[index],
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text('Baca artikel tentang hewan'),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ArticleDetailPage(
                                  articleTitle: articles[index]),
                            ),
                          );
                        },
                      ),
                    );
                  },
                )
              : currentIndex == 2
                  ? Center(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildInfoCard('Nama', 'HELENA MEILIANI',
                                const Color.fromARGB(255, 192, 227, 255)),
                            _buildInfoCard('NIM', '21552011228',
                                const Color.fromARGB(255, 202, 215, 255)),
                            _buildInfoCard('Kelas', 'TIF RM 22 CID',
                                const Color.fromARGB(255, 210, 228, 255)),
                            _buildInfoCard('Instagram', '@meiliani.helena',
                                const Color.fromARGB(255, 194, 213, 255)),
                          ],
                        ),
                      ),
                    )
                  : Center(child: Text('Error')),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.pets), label: 'Hewan'),
          BottomNavigationBarItem(icon: Icon(Icons.article), label: 'Artikel'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'Tentang'),
        ],
      ),
    );
  }

  Widget _buildInfoCard(String title, String content, Color color) {
    return Card(
      color: color,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(content),
      ),
    );
  }
}

class AnimalDetailPage extends StatelessWidget {
  final Animal animal;

  const AnimalDetailPage({Key? key, required this.animal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(animal.name)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                animal.imagePath,
                width: 250,
                height: 250,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 16),
            Text(
              animal.name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              animal.fullDescription,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class ArticleDetailPage extends StatelessWidget {
  final String articleTitle;

  const ArticleDetailPage({Key? key, required this.articleTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String articleContent = '';
    if (articleTitle == 'Artikel 1: Tentang Hewan Beruang') {
      articleContent =
          '''Beruang adalah mamalia besar yang termasuk dalam keluarga Ursidae, yang tersebar di berbagai belahan dunia, seperti Amerika Utara, Eropa, dan Asia. Hewan ini dikenal dengan tubuh yang kekar dan bulu yang tebal, yang membantu mereka bertahan dalam cuaca dingin. Beruang memiliki berbagai spesies, seperti beruang coklat, beruang hitam, dan beruang kutub, yang masing-masing memiliki kebiasaan dan habitat yang berbeda. Mereka cenderung hidup soliter, meskipun beberapa spesies dapat ditemukan dalam kelompok kecil, terutama saat mencari makanan.

Sebagai omnivora, beruang memiliki diet yang sangat bervariasi, tergantung pada spesies dan musim. Mereka memakan buah-buahan, tumbuh-tumbuhan, serangga, hingga daging dari hewan yang lebih kecil. Beruang kutub, misalnya, bergantung pada daging anjing laut untuk bertahan hidup, sementara beruang coklat lebih sering mencari makanan berbasis tumbuhan dan kadang-kadang berburu hewan kecil. Kemampuan beruang untuk mengumpulkan dan menyimpan lemak dalam tubuhnya sangat penting, terutama selama musim dingin, saat mereka akan berhibernasi untuk bertahan hidup tanpa makan selama berbulan-bulan.

Meskipun sering dianggap sebagai hewan yang kuat dan mandiri, beruang juga menghadapi ancaman serius dari kerusakan habitat, perburuan ilegal, dan perubahan iklim. Spesies seperti beruang kutub sangat terancam oleh pemanasan global, yang menyebabkan mencairnya es laut tempat mereka berburu. Upaya konservasi untuk melindungi beruang melibatkan pembatasan perburuan, pengelolaan habitat, dan studi lebih lanjut mengenai dampak perubahan iklim terhadap kelangsungan hidup mereka.''';
    }

    return Scaffold(
      appBar: AppBar(title: Text(articleTitle)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Text(
            articleContent,
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
