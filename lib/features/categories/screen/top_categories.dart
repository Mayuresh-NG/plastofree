import 'package:flutter/material.dart';
import 'package:plastofree/constant/GlobalVariables.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: globalvariables.secondaryColor,
        title: Row(
          children: const [
            Text("All Categories" ,
              style: TextStyle(
                color: Colors.white,
                fontSize: 22),),
          ],
        ),
      ),

      body: Container(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
        itemCount: globalvariables.categoryImages.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          mainAxisExtent: 170
        ),
          itemBuilder: (context,int index) {
            return Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(globalvariables.categoryImages[index]['image']!,
                              fit: BoxFit.cover,
                                height: 140,
                                width: 100,
                              ),
                            ),
                          ),
                          const SizedBox(height:5),
                          Text(
                            globalvariables.categoryImages[index]['title']!,
                            style: const TextStyle(
                              color: globalvariables.secondaryColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w600
                            ),
                          )
                        ],
                      );
          },
        ),
      ),
    );
  }
}