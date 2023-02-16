import 'package:flutter/material.dart';

class TopNews extends StatelessWidget {
  final String image;
  final String title;
  final String desc;
  final Function() ontp;
  const TopNews(
      {super.key,
      required this.image,
      required this.title,
      required this.desc, required this.ontp});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontp,
      child: SizedBox(
        height: 80,
        child: Row(
          children: [
            Image.asset(image),
            const SizedBox(width: 10),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      desc,
                      style: const TextStyle(
                          color: Color(0xff7C899D),
                          fontSize: 12,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
