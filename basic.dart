import 'package:flutter/material.dart';
import 'package:green_tech/screens/viewtypesfruit/Komkommer.dart';
import 'package:green_tech/widget/cardcateg.dart';

class BasicPage extends StatelessWidget {
  const BasicPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 23, 139, 60),
        title: Padding(
          padding: const EdgeInsets.only(left: 120),
          child: Text(
            "الرئيسية",
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Pacifico',
              fontWeight: FontWeight.bold,
              fontSize: 33,
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: Image.asset('assets/images/لووجو.jpeg'),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 30, 12, 10),
            child: CategoryCard(
              hight: 150,
              width: 270,
              categoryNamePage: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Komkommer(),
                  ),
                );
              },
              categoryName: 'صوبة خيار',
              image: 'assets/images/شتويه/images (8).jpg',
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 20, 12, 10),
                child: CategoryCard(
                  hight: 120,
                  width: 150,
                  categoryNamePage: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Komkommer(),
                      ),
                    );
                  },
                  categoryName: 'صوبة طماطم',
                  image: 'assets/images/شتويه/download (1).jpg',
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 20, 12, 10),
                child: CategoryCard(
                  hight: 120,
                  width: 150,
                  categoryNamePage: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Komkommer(),
                      ),
                    );
                  },
                  categoryName: 'صوبة فاصوليا',
                  image: 'assets/images/شتويه/images (10).jpg',
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 20, 12, 10),
                child: CategoryCard(
                  hight: 120,
                  width: 150,
                  categoryNamePage: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Komkommer(),
                      ),
                    );
                  },
                  categoryName: 'صوبة فلفل',
                  image: 'assets/images/شتويه/images (9).jpg',
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 20, 12, 10),
                child: CategoryCard(
                  hight: 120,
                  width: 150,
                  categoryNamePage: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Komkommer(),
                      ),
                    );
                  },
                  categoryName: 'صوبة باميه',
                  image: 'assets/images/شتويه/images (12).jpg',
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
