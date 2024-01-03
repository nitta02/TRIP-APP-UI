// ignore_for_file: unused_field

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late PageController _pageController;
  int totalPage = 4;

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          pageView(
              pageNumber: 1,
              title: 'BANDARBAN',
              image: 'assets/images/img1.jpg',
              description:
                  'It is one of the three hill districts of Bangladesh and a part of the Chittagong Hill Tracts, the others being Rangamati District and Khagrachhari District.'),
          pageView(
              pageNumber: 2,
              title: "RANGAMATI",
              image: 'assets/images/img2.jpg',
              description:
                  'Rangamati district is a district of natural beauties & cultural heritage.'),
          pageView(
              pageNumber: 3,
              title: "DHAKA",
              image: 'assets/images/img3.jpg',
              description:
                  'In Bangladesh it is known as “Jatiyo Sriti Shoudho”. It is the symbol of the valour and the sacrifice of those killed in the Bangladesh libaration war of 1971.'),
          pageView(
              pageNumber: 4,
              title: "Tangail",
              image: 'assets/images/img4.jpg',
              description: 'In Bangladesh it is known as Maya Road.'),
        ],
      ),
    );
  }

  Widget pageView({
    image,
    title,
    description,
    pageNumber,
  }) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.bottomRight,
          stops: [
            0.3,
            0.9,
          ],
          colors: [
            Colors.black.withOpacity(0.8),
            Colors.black.withOpacity(0.25),
          ],
        )),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    pageNumber.toString(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '/$totalPage',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(right: 3),
                        child: const Icon(
                          Icons.star_sharp,
                          color: Colors.yellow,
                          size: 15,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 3),
                        child: const Icon(
                          Icons.star_sharp,
                          color: Colors.yellow,
                          size: 15,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 3),
                        child: const Icon(
                          Icons.star_sharp,
                          color: Colors.yellow,
                          size: 15,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 3),
                        child: const Icon(
                          Icons.star_sharp,
                          color: Colors.yellow,
                          size: 15,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 3),
                        child: const Icon(
                          Icons.star_sharp,
                          color: Colors.grey,
                          size: 15,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        '(4.0)',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      const Text(
                        '/23000+',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    description,
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                      fontSize: 19,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'READ MORE',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.65),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
