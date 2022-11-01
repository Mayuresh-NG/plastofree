import 'package:flutter/material.dart';
import 'package:plastofree/constant/GlobalVariables.dart';
//
// class Orders extends StatefulWidget {
//   const Orders({Key? key}) : super(key: key);
//
//   @override
//   State<Orders> createState() => _OrdersState();
// }
//
// class _OrdersState extends State<Orders> {
//   List<Order>? orders;
//   final AccountServices accountServices = AccountServices();
//
//   @override
//   void initState() {
//     super.initState();
//     fetchOrders();
//   }
//
//   void fetchOrders() async {
//     orders = await accountServices.fetchMyOrders(context: context);
//     setState(() {});
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return orders == null
//         ? const Loader()
//         : Column(
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Container(
//               padding: const EdgeInsets.only(
//                 left: 15,
//               ),
//               child: const Text(
//                 'Your Orders',
//                 style: TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.w600,
//                 ),
//               ),
//             ),
//             Container(
//               padding: const EdgeInsets.only(
//                 right: 15,
//               ),
//               child: Text(
//                 'See all',
//                 style: TextStyle(
//                   color: GlobalVariables.selectedNavBarColor,
//                 ),
//               ),
//             ),
//           ],
//         ),
//         // display orders
//         Container(
//           height: 170,
//           padding: const EdgeInsets.only(
//             left: 10,
//             top: 20,
//             right: 0,
//           ),
//           child: ListView.builder(
//             scrollDirection: Axis.horizontal,
//             itemCount: orders!.length,
//             itemBuilder: (context, index) {
//               return GestureDetector(
//                 onTap: () {
//                   Navigator.pushNamed(
//                     context,
//                     OrderDetailScreen.routeName,
//                     arguments: orders![index],
//                   );
//                 },
//                 child: SingleProduct(
//                   image: orders![index].products[0].images[0],
//                 ),
//               );
//             },
//           ),
//         ),
//       ],
//     );
//   }
// }

class Orders extends StatefulWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  List list = [
    'https://images.unsplash.com/photo-1620570625542-194933f7639a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGFzdXMlMjB0dWZ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1620570625542-194933f7639a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGFzdXMlMjB0dWZ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1620570625542-194933f7639a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGFzdXMlMjB0dWZ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1620570625542-194933f7639a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGFzdXMlMjB0dWZ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.only(
                left: 15,
              ),
              child: const Text(
                'Your Orders',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: globalvariables.secondaryColor
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                right: 15,
              ),
              child: ElevatedButton(
                onPressed: () {
                  // Respond to button press
                },
                child: const Text('See All'),
              ),
            ),
          ],
        ),
      ]);
  }
}
