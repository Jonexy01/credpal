import 'package:credpal/domain/merchant_model.dart';
import 'package:credpal/domain/product_model.dart';
import 'package:credpal/utils/helpers.dart';
import 'package:credpal/widgets/merchant_tile.dart';
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
      productDisplayUrl: 'assets/images/IphoneXS.png',
      productOptionUrl: 'assets/images/ogabassey.png',
      title: 'iPhone XS Max 4GB..',
      price: '₦ 295,999',
      oldPrice: '₦ 315,000',
    ),
    ProductModel(
      productDisplayUrl: 'assets/images/Anker.png',
      productOptionUrl: 'assets/images/OkayFones.png',
      title: 'Anker Soundcore..',
      price: '₦ 39,780',
      oldPrice: '₦ 88,000',
    ),
    ProductModel(
      productDisplayUrl: 'assets/images/Iphone12.png',
      productOptionUrl: 'assets/images/IMateStores.png',
      title: 'iPhone 12 Pro',
      price: '₦ 490,500',
      oldPrice: '₦ 515,000',
    ),
  ];

  final List<MerchantModel> merchants = [
    MerchantModel(
      merchantIconUrl: 'assets/images/Justrite.png',
      merchantName: 'Justrite',
    ),
    MerchantModel(
      merchantIconUrl: 'assets/images/Orile.png',
      merchantName: 'Orile Restaurant',
    ),
    MerchantModel(
      merchantIconUrl: 'assets/images/Slot.png',
      merchantName: 'Slot',
    ),
    MerchantModel(
      merchantIconUrl: 'assets/images/Pointek.png',
      merchantName: 'Pointek',
    ),
    MerchantModel(
      merchantIconUrl: 'assets/images/ogabasseyIcon.png',
      merchantName: 'ogabassey',
    ),
    MerchantModel(
      merchantIconUrl: 'assets/images/Casper.png',
      merchantName: 'Casper Stores',
    ),
    MerchantModel(
      merchantIconUrl: 'assets/images/Dreamworks.png',
      merchantName: 'Dreamworks',
    ),
    MerchantModel(
      merchantIconUrl: 'assets/images/Hubmart.png',
      merchantName: 'Hubmart',
    ),
    MerchantModel(
      merchantIconUrl: 'assets/images/JustUsed.png',
      merchantName: 'Just Used',
    ),
    MerchantModel(
      merchantIconUrl: 'assets/images/Justfones.png',
      merchantName: 'Just fones',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const HomePageTab(),
              const SizedBox(height: 18),
              const SearchRowWidget(),
              const SizedBox(height: 24),
              ProductGridView(products: products),
              const SizedBox(height: 33),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: const [
                    Text(
                      'Featured Merchants',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w900,
                        color: Color(0xFF33334D),
                      ),
                    ),
                    Spacer(),
                    Text(
                      'View all',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF274FED),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 37),
              MerchantsGridView(merchants: merchants),
              const SizedBox(height: 36),
            ],
          ),
        ),
      ),
    );
  }
}

class MerchantsGridView extends StatelessWidget {
  const MerchantsGridView({
    Key? key,
    required this.merchants,
  }) : super(key: key);

  final List<MerchantModel> merchants;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 31,
          crossAxisCount: 4,
        ),
        itemBuilder: (context, index) => MerchantTile(
          merchantIconUrl: merchants[index].merchantIconUrl!,
          merchantName: merchants[index].merchantName!,
        ),
        itemCount: merchants.length,
      ),
    );
  }
}

class ProductGridView extends StatelessWidget {
  ///A gridview displaying products
  const ProductGridView({
    Key? key,
    required this.products,
  }) : super(key: key);

  final List<ProductModel> products;

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}

class SearchRowWidget extends StatelessWidget {
  ///Displays home page search just after header bar
  const SearchRowWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}

class HomePageTab extends StatelessWidget {
  ///Home page header tab
  const HomePageTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                          fontFamily: 'Axiforma',
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
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
    );
  }
}
