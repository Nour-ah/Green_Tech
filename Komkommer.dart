import 'package:flutter/material.dart';
import 'package:green_tech/widget/textfiled.dart';

class Komkommer extends StatelessWidget {
  const Komkommer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 23, 139, 60),
        title: Padding(
          padding: const EdgeInsets.only(left: 120),
          child: Text(
            "صوبة الخيار",
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Pacifico',
              fontWeight: FontWeight.bold,
              fontSize: 28,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 20, 12, 12),
            child: Image.asset("assets/images/شتويه/images (8).jpg"),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(70, 15, 10, 1),
            child: Text(
              " درجة الحراره : 34 ",
              style: const TextStyle(
                color: Color.fromARGB(255, 11, 119, 45),
                fontSize: 22,
                fontFamily: 'Pacifico',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(70, 0, 10, 15),
            child: Text(
              " %نسبة الرطوبه : 30 ",
              style: const TextStyle(
                color: Color.fromARGB(255, 11, 119, 45),
                fontSize: 22,
                fontFamily: 'Pacifico',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(70, 0, 10, 15),
            child: Text(
              " %نسبة الحموضه : 20 ",
              style: const TextStyle(
                color: Color.fromARGB(255, 11, 119, 45),
                fontSize: 22,
                fontFamily: 'Pacifico',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 15, 1, 10),
            child: ButtonReuse(
              hight: 50,
              width: 160,
              text: "تشغيل المبرد",
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 15, 1, 10),
            child: ButtonReuse(
              hight: 50,
              width: 160,
              text: "قفل المبرد",
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 15, 1, 10),
            child: ButtonReuse(
              hight: 50,
              width: 160,
              text: "تشغيل المياه",
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 15, 1, 10),
            child: ButtonReuse(
              hight: 50,
              width: 160,
              text: "قفل المياه",
            ),
          ),
        ],
      ),
    );
  }
}
