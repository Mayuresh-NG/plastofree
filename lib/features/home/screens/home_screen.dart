import 'package:flutter/material.dart';
import 'package:plastofree/constant/GlobalVariables.dart';
import 'package:plastofree/features/home/widgets/address_box.dart';
import 'package:plastofree/features/home/widgets/caraousel_image.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "/home";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              color: globalvariables.backgroundColor,
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Container(
                  height: 42,
                  margin: const EdgeInsets.only(left: 15) ,
                  child: Material(
                    borderRadius: BorderRadius.circular(7),
                    elevation: 1,
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: InkWell(
                        onTap: () {},
                            child: const Padding(padding: EdgeInsets.only(left: 6),
                            child : Icon(Icons.search,color: Colors.black,size: 23,))
                        ),
                        filled: true,
                        fillColor: Colors.white,
                          contentPadding: const EdgeInsets.only(top: 10),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(7)
                          ),
                          borderSide: BorderSide.none,
                        ),
                        hintText: 'Search'
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.transparent,
                height: 42,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: const Icon(Icons.mic, color: Colors.black, size: 25),
              )
            ],
          ),
        ),
      ),
      body:SingleChildScrollView(
        child: Column(
          children: const [
            AddressBox(),
            SizedBox(height: 10,width:4500,child: DecoratedBox(decoration: BoxDecoration(color: Colors.white)),),
            CarouselImage(),
            SizedBox(height: 10,width:4500,child: DecoratedBox(decoration: BoxDecoration(color: Colors.white)),),

          ],
        ),
      ),
      );
  }
}
