import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plastofree/constant/GlobalVariables.dart';
import 'package:plastofree/features/account/widgets/single_product.dart';
import 'package:plastofree/features/admin/screen/product_screen.dart';
import 'package:plastofree/features/admin/services/admin_services.dart';
import 'package:plastofree/widgets/loader.dart';

import '../../../models/product.dart';

class PostsScreen extends StatefulWidget {
  const PostsScreen({Key? key}) : super(key: key);

  @override
  State<PostsScreen> createState() => _PostsScreenState();
}

class _PostsScreenState extends State<PostsScreen> {
  List<Product>? products;
  final AdminServices adminServices = AdminServices();
  @override
  void initState() {
    super.initState();
    fetchAllProducts();
  }

  fetchAllProducts() async {
    products = await adminServices.fetchAllProducts(context);
    setState(() {

    });
  }

  void navigateToAddProduct()
  {
    Navigator.pushNamed(context, AddProduct.routeName);
  }

  void deleteProduct(Product product, int index) {
    adminServices.deleteProduct(
      context: context,
      product: product,
      onSuccess: () {
        products!.removeAt(index);
        setState(() {});
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return products == null
        ? const Loader()
        : Scaffold(
            backgroundColor: Colors.white,
            body: Padding(
              padding: const EdgeInsets.all(8),
              child: GridView.builder(
                itemCount: products!.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2),
                  itemBuilder: (context , index){
                    final productData = products![index];
                    return Column(
                      children: [
                        SizedBox(
                          height: 140,
                          child: SingleProduct(
                            image: productData.images[0],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(child: Text(
                              productData.name,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              ),
                            ),
                            IconButton(
                              onPressed: () =>deleteProduct(productData, index),
                              icon: const Icon(
                                  Icons.delete_outlined,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ],
                    );
                  },
              ),
            ),
            floatingActionButton: FloatingActionButton(
              elevation: 10,
              backgroundColor: globalvariables.secondaryColor,
              child: const Icon(Icons.add),foregroundColor: Colors.white,
              onPressed: navigateToAddProduct,
              tooltip: 'Add a Product',
          ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
