import 'package:flutter/material.dart';

class Order extends StatelessWidget {
  final String action;
  final String ordTyp;
  final String date;
  final String stock;
  final String status;
  final Color actionColor;
  final Color statusColor;

  const Order(
      {super.key,
      required this.action,
      required this.ordTyp,
      required this.date,
      required this.stock,
      required this.status, 
      required this.actionColor,
       required this.statusColor,
       });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                action,
                style: TextStyle(
                    color: actionColor,
                    fontSize: 12,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const Text(
                    'Ord typ:',
                    style: TextStyle(
                        color: Color(0xff7C899D),
                        fontSize: 8,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    ordTyp,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 8,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  const Text(
                    'Ord date:',
                    style: TextStyle(
                        color: Color(0xff7C899D),
                        fontSize: 8,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    date,
                    style: const TextStyle(
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
                  Text(
                    stock,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 12,
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
                children: const [
                  Text(
                    'Exec Oty:',
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
              const SizedBox(
                height: 5,
              ),
              Row(
                children: const [
                  Text(
                    'Ord Oty:',
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
              Text(
                status,
                style: TextStyle(
                    color:statusColor,
                    fontSize: 12,
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
                    '\$110.00',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 8,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: const [
                  Text(
                    'Ord price:',
                    style: TextStyle(
                        color: Color(0xff7C899D),
                        fontSize: 8,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    '\$110.00',
                    style: TextStyle(
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
