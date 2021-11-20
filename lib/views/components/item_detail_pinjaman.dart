import 'package:flutter/material.dart';

class ItemDetailPinjaman extends StatelessWidget {
  final IconData icon;
  final String detail;
  final String value;

  const ItemDetailPinjaman({
    Key? key,
    required this.icon,
    required this.detail,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: double.infinity,
      child: Row(
        // 1 + 1 = 2 -> 1 / (2) -> 50%
        children: [
          Container(
            width: 50,
            height: 50,
            child: Icon(this.icon),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Text(
                "${this.detail} ${this.value}",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
