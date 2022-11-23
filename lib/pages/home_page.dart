import 'package:credpal/domain/product_model.dart';
import 'package:credpal/utils/helpers.dart';
import 'package:credpal/widgets/product_item_tile.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<ProductModel> products = [
    ProductModel(
      productDisplayUrl: 'assets/images/Nokia.png',
      productOptionUrl: 'assets/images/Pay40.png',
      title: 'Nokia G20',
      price: '₦ 39,780',
      oldPrice: '₦ 88,000',
    ),
    ProductModel(
      productDisplayUrl: 'assets/images/Nokia.png',
      productOptionUrl: 'assets/images/Pay40.png',
      title: 'Nokia G20',
      price: '₦ 39,780',
      oldPrice: '₦ 88,000',
    ),
    ProductModel(
      productDisplayUrl: 'assets/images/Nokia.png',
      productOptionUrl: 'assets/images/Pay40.png',
      title: 'Nokia G20',
      price: '₦ 39,780',
      oldPrice: '₦ 88,000',
    ),
    ProductModel(
      productDisplayUrl: 'assets/images/Nokia.png',
      productOptionUrl: 'assets/images/Pay40.png',
      title: 'Nokia G20',
      price: '₦ 39,780',
      oldPrice: '₦ 88,000',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: const Color(0xFFD0DAFF),
                child: Column(
                  children: [
                    const SizedBox(height: 35),
                    Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          'Pay later \neverywhere',
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.w900),
                        ),
                      ),
                      const SizedBox(width: 7),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Image.asset('assets/icons/warning.png'),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text(
                              'Shopping limit: ₦0',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF20294A),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Container(
                              height: 37,
                              width: 134,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: const Color(0xFF274FED),
                              ),
                              child: TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Activate Credit',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ]),
                    const SizedBox(height: 45)
                  ],
                ),
              ),
              const SizedBox(height: 18),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: width(context) * 0.746,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFFF1F3FE).withOpacity(0.8),
                        border: Border.all(
                          color: Colors.transparent,
                        ),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Image.asset('assets/icons/search.png'),
                          labelText: 'Search for products or stores',
                          labelStyle: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF9494B8),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 0,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 0,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Image.asset('assets/icons/mic.png'),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Container(
                padding: const EdgeInsets.only(
                  top: 14,
                  bottom: 17,
                  left: 30,
                  right: 30,
                ),
                color: const Color(0xFFF1F3FE),
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 24,
                    mainAxisSpacing: 26,
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (context, index) => ProductItemTile(
                    productDisplayUrl: products[index].productDisplayUrl!,
                    optionImageUrl: products[index].productOptionUrl!,
                    title: products[index].title!,
                    price: products[index].price!,
                    oldPrice: products[index].oldPrice!,
                  ),
                  itemCount: products.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
