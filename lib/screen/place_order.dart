import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:trading/widget/top_stocks_widget.dart';

class PlaceOrder extends StatefulWidget {
  const PlaceOrder({super.key});

  @override
  State<PlaceOrder> createState() => _PlaceOrderState();
}

class _PlaceOrderState extends State<PlaceOrder> {
  bool _button1Clicked = false;

  void _onButton1Clicked() {
    setState(() {
      _button1Clicked = true;
    });
  }

  void _onButton2Clicked() {
    setState(() {
      _button1Clicked = false;
    });
  }

  String _selectedItem = 'Limit';
  final List<String> _items = ['Limit', 'Option 2', 'Option 3'];
  final TextEditingController _date = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
        title: const Text(
          'Place Order',
          style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const TopStocks(
              logo: 'assets/images/e1.png',
              title: 'VMC',
              subTitle: 'Victorias Milling Company, Inc',
              price: 3.26,
              range: '105.12 (10.14%)',
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'BEST BID :',
                        style: TextStyle(
                            color: Color(0xff7C899D),
                            fontSize: 10,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '102',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  const VerticalDivider(
                    // width: 2,
                    thickness: 1,
                    color: Color(0xff7C899D),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'BEST ASK :',
                        style: TextStyle(
                            color: Color(0xff7C899D),
                            fontSize: 10,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '50',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 160,
                  height: 45,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          _button1Clicked ? Colors.green : Colors.grey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: _button1Clicked ? null : _onButton1Clicked,
                    child: const Text('BUY'),
                  ),
                ),
                SizedBox(
                  width: 160,
                  height: 45,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          _button1Clicked ? Colors.green : Colors.grey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: _button1Clicked ? _onButton2Clicked : null,
                    child: const Text('BUY'),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [
                const Text(
                  'Order type',
                  style: TextStyle(
                      color: Color(0xff7C899D),
                      fontSize: 14,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400),
                ),
                const Expanded(child: SizedBox()),
                Container(
                    height: 50,
                    width: 250,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: const Color(0xff7C899D))),
                    padding: const EdgeInsets.all(10),
                    child: DropdownButton(
                      isExpanded: true,
                      value: _selectedItem,
                      items: _items.map((item) {
                        return DropdownMenuItem(
                          value: item,
                          child: Text(item),
                        );
                      }).toList(),
                      underline: Container(), // hide the underline
                      onChanged: (value) {
                        setState(() {
                          _selectedItem = value.toString();
                        });
                      },
                    ))
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Text(
                  'Price',
                  style: TextStyle(
                      color: Color(0xff7C899D),
                      fontSize: 14,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400),
                ),
                const Expanded(child: SizedBox()),
                Container(
                    height: 50,
                    width: 250,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: const Color(0xff7C899D))),
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        const Text(
                          'Php',
                          style: TextStyle(
                              color: Color(0xff7C899D),
                              fontSize: 14,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400),
                        ),
                        const VerticalDivider(
                          // width: 2,
                          thickness: 1,
                          color: Color(0xff7C899D),
                        ),
                        Expanded(
                            child: TextFormField(
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                          ),
                        ))
                      ],
                    )),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Text(
                  'quantity',
                  style: TextStyle(
                      color: Color(0xff7C899D),
                      fontSize: 14,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400),
                ),
                const Expanded(child: SizedBox()),
                Container(
                    height: 50,
                    width: 250,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: const Color(0xff7C899D))),
                    padding: const EdgeInsets.all(10),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                    )),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Text(
                  'Order Value',
                  style: TextStyle(
                      color: Color(0xff7C899D),
                      fontSize: 14,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400),
                ),
                const Expanded(child: SizedBox()),
                Container(
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                      color: const Color(0xffDEDEDE),
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: const Color(0xff7C899D))),
                  padding: const EdgeInsets.all(15),
                  child: const Text(
                    '' ' ₱ 12,250.00' '',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Text(
                  'Expire Date',
                  style: TextStyle(
                      color: Color(0xff7C899D),
                      fontSize: 14,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400),
                ),
                const Expanded(child: SizedBox()),
                Container(
                    height: 50,
                    width: 250,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: const Color(0xff7C899D))),
                    padding: const EdgeInsets.all(10),
                    child: TextFormField(
                      controller: _date,
                      decoration: InputDecoration(
                        suffixIcon: Image.asset('assets/icons/d.png'),
                        border: InputBorder.none,
                        // labelText: "",
                        // hintText: "Ex. Insert your dob",
                      ),
                      onTap: () async {
                        DateTime? pickteddate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2030));
                        if (pickteddate != null) {
                          setState(() {
                            _date.text =
                                DateFormat('yyyy-mm-dd').format(pickteddate);
                          });
                        }
                      },
                    )),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Text(
                  'Pay With',
                  style: TextStyle(
                      color: Color(0xff7C899D),
                      fontSize: 14,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400),
                ),
                const Expanded(child: SizedBox()),
                Container(
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: const Color(0xff7C899D))),
                  padding: const EdgeInsets.all(15),
                  child: const Text(
                    'Cash',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 56),
            SizedBox(
              height: 45,
              width: 228,
              child: ElevatedButton(
                onPressed: () {
                  // do something when the button is pressed
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(const Color(0xff00ACEC)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22.5),
                    ),
                  ),
                ),
                child:
                    const Text('Submit Order', style: TextStyle(fontSize: 16)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
