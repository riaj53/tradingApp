import 'package:flutter/material.dart';

class TopStocks extends StatelessWidget {
  final String logo;
  final String title;
  final String subTitle;
  final double price;
  final String range;
  final Function()? ontp;
  const TopStocks(
      {super.key,
      required this.logo,
      required this.title,
      required this.subTitle,
      required this.price,
      required this.range,
      this.ontp});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontp,
      child: Container(
        height: 60,
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Image.asset(logo),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      title,
                      style: const TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    const Text(
                      '  PH',
                      style: TextStyle(fontSize: 10, color: Color(0xff93A3BC)),
                    ),
                  ],
                ),
                const Text(
                  'Victorias Milling Company, Inc.',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            const Expanded(child: SizedBox()),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '\$ $price',
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.arrow_upward_outlined,
                      color: Color(0xff04B400),
                      size: 14,
                    ),
                    Text(
                      range,
                      style: const TextStyle(
                          color: Color(0xff04B400),
                          fontSize: 10,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
