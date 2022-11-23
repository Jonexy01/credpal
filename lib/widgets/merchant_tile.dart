import 'package:flutter/material.dart';

class MerchantTile extends StatelessWidget {
  ///Tile to display each merchant on the homepage
  const MerchantTile({
    super.key,
    required this.merchantIconUrl,
    required this.merchantName,
  });

  final String merchantIconUrl, merchantName;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      height: 80,
      child: Column(
        children: [
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 60,
              maxHeight: 60,
            ),
            child: Image.asset(merchantIconUrl)),
          const SizedBox(height: 5),
          Text(merchantName, style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),),
        ],
      ),
    );
  }
}
