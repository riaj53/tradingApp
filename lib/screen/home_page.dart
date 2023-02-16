import 'package:flutter/material.dart';
import 'package:trading/screen/place_order.dart';
import 'package:trading/widget/orders_widget.dart';
import 'package:trading/widget/portfolio_widget.dart';
import 'package:trading/widget/top_news.dart';
import 'package:trading/widget/top_stocks_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Image.asset(
          'assets/images/logo.png',
          height: 20,
          width: 20,
        ),
        backgroundColor: const Color(0xff3e5273),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                size: 25,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_rounded,
                size: 25,
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/images/bg.jpg',
                  height: 170,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Welcome Back!',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Your Portfolio Value',
                        style: TextStyle(
                            color: Color(0xffCAD6E9),
                            fontSize: 12,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        '\$2100.35',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: const [
                          Icon(
                            Icons.arrow_upward_outlined,
                            color: Color(0xff04B400),
                            size: 14,
                          ),
                          Text(
                            '3.75(0.35%)',
                            style: TextStyle(
                                color: Color(0xff04B400),
                                fontSize: 12,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        '25 January 2023 PHT',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  const Text(
                    'Top Stocks',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400),
                  ),
                  const Expanded(child: SizedBox()),
                  InkWell(
                      onTap: () {},
                      child: Image.asset('assets/images/ic1.png')),
                  const SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Icon(
                      Icons.menu,
                      color: Color(0xff63667A),
                      size: 18,
                    ),
                  ),
                ],
              ),
            ),
            TopStocks(
                logo: 'assets/images/e1.png',
                title: 'VMC',
                subTitle: 'Victorias Milling Company, Inc',
                price: 3.26,
                range: '105.12 (10.14%)',
                ontp: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PlaceOrder()));
                }),
            const TopStocks(
                logo: 'assets/images/c1.png',
                title: 'CHP',
                subTitle: 'Cemex Holdings Philippines, Inc.',
                price: 0.78,
                range: '870.03 (23.81%)'),
            const TopStocks(
                logo: 'assets/images/m1.png',
                title: 'MVC',
                subTitle: 'Mabuhay Vinyl Corporation',
                price: 5.13,
                range: '200.01 (6.39%)'),
            const TopStocks(
                logo: 'assets/images/a1.png',
                title: 'HOME',
                subTitle: 'AllHome Corp.',
                price: 2.17,
                range: '92.02 (7.43%)'),
            const TopStocks(
                logo: 'assets/images/a2.png',
                title: 'AC',
                subTitle: 'Ayala Corporation',
                price: 732,
                range: '24.50 (3.46%)'),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  const Text(
                    'Orders',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400),
                  ),
                  const Expanded(child: SizedBox()),
                  InkWell(
                    onTap: () {},
                    child: const Icon(
                      Icons.menu,
                      color: Color(0xff63667A),
                      size: 18,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'ACTION',
                    style: TextStyle(
                        color: Color(0xff7C899D),
                        fontSize: 10,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400),
                  ),
                  Expanded(child: SizedBox()),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    'STOCK',
                    style: TextStyle(
                        color: Color(0xff7C899D),
                        fontSize: 10,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400),
                  ),
                  Expanded(child: SizedBox()),
                  Text(
                    'STATUS',
                    style: TextStyle(
                        color: Color(0xff7C899D),
                        fontSize: 10,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    width: 25,
                  )
                ],
              ),
            ),
            const Order(
              action: 'BUY',
              actionColor: Color(0xff04B400),
              ordTyp: 'Limit',
              date: '22/jan/2023',
              stock: 'BDO',
              status: 'Executed',
              statusColor: Color(0xff00ACEC),
            ),
            const Order(
              action: 'BUY',
              actionColor: Color(0xff04B400),
              ordTyp: 'Limit',
              date: '22/jan/2023',
              stock: 'HOME',
              status: 'Partially Executed',
              statusColor: Color(0xff00ACEC),
            ),
            const Order(
              action: 'BUY',
              actionColor: Color(0xff04B400),
              ordTyp: 'Limit',
              date: '22/jan/2023',
              stock: 'AC',
              status: 'Queued in Market',
              statusColor: Color(0xffFF9432),
            ),
            const Order(
              action: 'SELL',
              actionColor: Colors.red,
              ordTyp: 'Limit',
              date: '22/jan/2023',
              stock: 'HOME',
              status: 'Partially Executed',
              statusColor: Color(0xff00ACEC),
            ),
            const Order(
              action: 'BUY',
              actionColor: Color(0xff04B400),
              ordTyp: 'Limit',
              date: '22/jan/2023',
              stock: 'HOME',
              status: 'Partially Executed',
              statusColor: Color(0xff00ACEC),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  const Text(
                    'Portfolio',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400),
                  ),
                  const Expanded(child: SizedBox()),
                  InkWell(
                    onTap: () {},
                    child: const Icon(
                      Icons.menu,
                      color: Color(0xff63667A),
                      size: 18,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'STOCK',
                    style: TextStyle(
                        color: Color(0xff7C899D),
                        fontSize: 10,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400),
                  ),
                  Expanded(child: SizedBox()),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    'VALUE',
                    style: TextStyle(
                        color: Color(0xff7C899D),
                        fontSize: 10,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400),
                  ),
                  Expanded(child: SizedBox()),
                  Text(
                    'GAIN/LOSS',
                    style: TextStyle(
                        color: Color(0xff7C899D),
                        fontSize: 10,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                ],
              ),
            ),
            const Portfolio(
                stock: 'VMC',
                shares: 1000,
                value: 8000.00,
                gainLoss: '24.50 (3.46%)',
                gainColor: Color(0xff04B400),
                curentPrice: 88.00),
            const Portfolio(
                stock: 'BDO',
                shares: 1000,
                value: 7300.00,
                gainLoss: '24.50 (3.46%)',
                gainColor: Colors.red,
                curentPrice: 88.00),
            const Portfolio(
                stock: 'PHA',
                shares: 1000,
                value: 8000.00,
                gainLoss: '24.50 (3.46%)',
                gainColor: Color(0xff04B400),
                curentPrice: 88.00),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  const Text(
                    'Top News',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400),
                  ),
                  const Expanded(child: SizedBox()),
                  InkWell(
                    onTap: () {},
                    child: const Icon(
                      Icons.menu,
                      color: Color(0xff63667A),
                      size: 18,
                    ),
                  ),
                ],
              ),
            ),
            TopNews(
                image: 'assets/images/n1.png',
                title: 'Economic Cycle',
                ontp: () {},
                desc:
                    'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots'),
            const SizedBox(
              height: 5,
            ),
            TopNews(
                image: 'assets/images/n2.png',
                title: 'Apple fall down!',
                ontp: () {},
                desc:
                    'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots')
          ],
        ),
      ),
    );
  }
}
