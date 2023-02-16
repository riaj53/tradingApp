import 'package:flutter/material.dart';

class Portfolio extends StatelessWidget {
  final String stock;
  final int shares;

  final double value;
  final String gainLoss;

  final Color gainColor;
  final double curentPrice;
  const Portfolio({
    super.key,
    required this.stock,
    required this.shares,
    required this.value,
    required this.gainLoss,
    required this.gainColor,
    required this.curentPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              children: [
                Text(
                  stock,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400),
                ),
                const Text(
                  '  PH',
                  style: TextStyle(fontSize: 10, color: Color(0xff93A3BC)),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Text(
                  'Shares:',
                  style: TextStyle(
                      color: Color(0xff7C899D),
                      fontSize: 8,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  shares.toString(),
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 8,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ]),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '\$ $value',
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 10),
              Row(
                children: const [
                  Text(
                    'Avg Price:',
                    style: TextStyle(
                        color: Color(0xff7C899D),
                        fontSize: 8,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    '1000',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 8,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.arrow_upward_outlined,
                    color: Color(0xff04B400),
                    size: 14,
                  ),
                  Text(
                    gainLoss,
                    style: TextStyle(
                        color: gainColor,
                        fontSize: 10,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const Text(
                    'Current Price:',
                    style: TextStyle(
                        color: Color(0xff7C899D),
                        fontSize: 8,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    '\$$curentPrice',
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 8,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
