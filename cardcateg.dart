import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
   CategoryCard({
    super.key,
    required this.categoryName,
    required this.image,
    required this.categoryNamePage, required this.hight, required this.width,
  });
  final String categoryName;
  final String image;
  final VoidCallback? categoryNamePage;
  final double hight,width;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: categoryNamePage,
         
            child: Container(
              height: hight,
              width: width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image:
                    DecorationImage(image: AssetImage(image), fit: BoxFit.fill),
              ),
            ),
          ),
    
         Center(
          
            child: Text(
              categoryName,
              style: const TextStyle(
                  color: Color.fromARGB(255, 11, 119, 45), fontSize: 20,  fontFamily: 'Pacifico',
              fontWeight: FontWeight.bold,),
            ),
          ),
        
      ],
    );
  }
}
