import 'package:credpal/utils/helpers.dart';
import 'package:flutter/material.dart';

class ProductItemTile extends StatefulWidget {
  ///Tile to display products on the homepage
  const ProductItemTile({
    super.key,
    required this.productDisplayUrl,
    required this.optionImageUrl,
    required this.title,
    required this.price,
    required this.oldPrice,
  });

  final String productDisplayUrl;
  final String optionImageUrl;
  final String title;
  final String price, oldPrice;

  @override
  State<ProductItemTile> createState() => _ProductItemTileState();
}

class _ProductItemTileState extends State<ProductItemTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 174,
      width: width(context) * 0.389,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Image.asset(widget.productDisplayUrl),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 6,
              top: 6,
            ),
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF000000).withOpacity(0.05),
                      offset: const Offset(0, 4),
                      blurRadius: 10,
                    ),
                  ],
                  color: Colors.white,
                ),
                child: Image.asset(widget.optionImageUrl),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, bottom: 41),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(widget.title, style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w800,
                color: Color(0xFF1A1A1A),
              ),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14, bottom: 14),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Row(
                children: [
                  Text(widget.price, style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFF274FED),
                  ),),
                  const SizedBox(width: 14),
                  Text(widget.oldPrice, style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFB3B3CC),
                    decoration: TextDecoration.lineThrough,
                  ),),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
