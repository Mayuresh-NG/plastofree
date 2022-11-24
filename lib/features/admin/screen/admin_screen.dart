import 'package:flutter/material.dart';
import 'package:plastofree/constant/GlobalVariables.dart';
import 'package:plastofree/features/admin/screen/post.dart';

class AdminScreen extends StatefulWidget {
  const AdminScreen({Key? key}) : super(key: key);

  @override
  State<AdminScreen> createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  int _page = 0;
  List<Widget> pages = [
    const PostsScreen(),
    const Center(child: Text('Post page')),
    const Center(child: Text('Analytic page')),
  ];

  void updatePage(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              color: globalvariables.backgroundColor,
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: Image.asset(
                  'images/logo1.png',
                  width: 120,
                  height: 45,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: const Text('Admin',style: TextStyle(color:Colors.black,fontSize: 22),),
              )
            ],
          ),
        ),
      ),
      body: pages[_page],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        currentIndex: _page,
        selectedItemColor: globalvariables.secondaryColor,
        unselectedItemColor: Colors.black,
        backgroundColor: globalvariables.backgroundColor,
        iconSize: 28,
        selectedLabelStyle: const TextStyle(fontSize: 12),
        unselectedLabelStyle: const TextStyle(fontSize: 10) ,
        onTap: updatePage,
        items: const [
          // HOME
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Posts',
          ),
          // ACCOUNT
          BottomNavigationBarItem(
            icon: Icon(
              Icons.all_inbox_rounded,
            ),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.analytics,
            ),
            label: 'Analytics',
          ),
        ],
      ),
    );
  }
}
