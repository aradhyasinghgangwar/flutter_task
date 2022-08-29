import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:scroll_navigation/scroll_navigation.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class thirdPage extends StatefulWidget {
  const thirdPage({Key? key}) : super(key: key);

  @override
  State<thirdPage> createState() => _thirdPageState();
}

class _thirdPageState extends State<thirdPage> {
  bool isFabVisible = true;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      floatingActionButton: Container(
        width: screenWidth * 0.9,
        child: FloatingActionButton.extended(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          backgroundColor: Color(0xFF0E3C6E),
          label: Text(
            'Apply Now',
            style: GoogleFonts.lato(fontWeight: FontWeight.w700, fontSize: 20),
          ),
          onPressed: () {},
        ),
      ),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0E3C6E),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: screenWidth,
              child: Image.asset("assets/images/thirdpageimg.png"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: screenHeight * 0.15,
                  width: screenWidth * 0.78,
                  color: Colors.white10,
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'GHJK Engineering College',
                          style: GoogleFonts.lato(
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                              color: Colors.black),
                        ),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Felis consectetur nulla pharetra praesent hendrerit vulputate viverra. Pellentesque aliquam tempus faucibus est.',
                          style: GoogleFonts.lato(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF8E8E8E),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: screenHeight * 0.1,
                  width: screenWidth * 0.15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: const Color(0xFF27C200),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '4.3',
                        style: GoogleFonts.lato(
                            fontWeight: FontWeight.w800,
                            fontSize: 18,
                            color: Colors.white),
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.white,
                        size: 23,
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: screenHeight,
              child: TitleScrollNavigation(
                barStyle: const TitleNavigationBarStyle(
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Colors.black),
                    padding:
                        EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
                    spaceBetween: 20),
                titles: const [
                  "About College",
                  "Hostel Facilities",
                  "Q & A",
                  "Events"
                ],
                pages: [
                  Container(
                    color: Colors.white10,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, top: 20, bottom: 50),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Description",
                            style: GoogleFonts.lato(
                                fontSize: 16, fontWeight: FontWeight.w700),
                          ),
                          Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras '
                            'at pretium varius purus cursus. Morbi justo commodo habitant morbi quis '
                            'pharetra posuere mauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices.',
                            style: GoogleFonts.lato(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: const Color(0xFF969797)),
                          ),
                          Text(
                            "Location",
                            style: GoogleFonts.lato(
                                fontSize: 16, fontWeight: FontWeight.w700),
                          ),
                          Image.asset('assets/images/Background.png'),
                          Text(
                            "Student Review",
                            style: GoogleFonts.lato(
                                fontSize: 16, fontWeight: FontWeight.w700),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                  'assets/images/unsplash_71NgiXcdTzE.png'),
                              Image.asset(
                                  'assets/images/unsplash_Q76DPRQ3Ix0.png'),
                              Image.asset(
                                  'assets/images/unsplash_wRdYnqXtyYk.png'),
                              Image.asset(
                                  'assets/images/unsplash_ijhzqAm3N1Y.png'),
                              Image.asset(
                                  'assets/images/unsplash_Q76DPRQ3Ix0.png'),
                              Image.asset(
                                  'assets/images/unsplash_71NgiXcdTzE.png'),
                            ],
                          ),
                          Center(
                            child: SizedBox(
                              height: screenHeight * 0.2,
                              width: screenWidth * 0.8,
                              child: Card(
                                color: Colors.white,
                                elevation: 10,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "Arun Sai",
                                        style: GoogleFonts.lato(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      Text(
                                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nec sed lorem nunc '
                                        'varius rutrum eget dolor, quis. Nulla sit magna suscipit tellus malesuada in facilisis a.',
                                        style: GoogleFonts.lato(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: const Color(0xFF969797),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow[700],
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow[700],
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow[700],
                                          ),
                                          Icon(
                                            Icons.star_half,
                                            color: Colors.yellow[700],
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.black12,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, top: 20, bottom: 40),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: const Color(0xFF0E3C6E),
                                ),
                                onPressed: () {},
                                child: Row(
                                  children: const [
                                    Icon(Icons.bed),
                                    Text('4'),
                                  ],
                                ),
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: const Color(0xFF0E3C6E),
                                ),
                                onPressed: () {},
                                child: Row(
                                  children: const [Icon(Icons.bed), Text('3')],
                                ),
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: const Color(0xFF0E3C6E),
                                ),
                                onPressed: () {},
                                child: Row(
                                  children: const [Icon(Icons.bed), Text('2')],
                                ),
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: const Color(0xFF0E3C6E),
                                ),
                                onPressed: () {},
                                child: Row(
                                  children: const [Icon(Icons.bed), Text('1')],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset(
                                  'assets/images/unsplash_T1Yvmf4oleQ.png'),
                              const SizedBox(
                                width: 20,
                              ),
                              Image.asset(
                                  'assets/images/unsplash_WQJvWU_HZFo.png')
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'GHJK Engineering Hostel',
                                style: GoogleFonts.lato(
                                    fontSize: 16, fontWeight: FontWeight.w700),
                              ),
                              Container(
                                height: 20,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6.0),
                                    color: const Color(0xFF27C200)),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8, top: 2, bottom: 2, right: 4),
                                  child: Row(
                                    children: [
                                      Text(
                                        '4.3',
                                        style: GoogleFonts.lato(
                                            fontWeight: FontWeight.w800,
                                            fontSize: 13,
                                            color: Colors.white),
                                      ),
                                      const Icon(
                                        Icons.star,
                                        color: Colors.white,
                                        size: 14,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.location_on_outlined,
                                color: Colors.blue,
                              ),
                              Text(
                                'Lorem ipsum dolor sit amet, consectetur ',
                                style: GoogleFonts.lato(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12,
                                    color: const Color(0xFF4A4A4A)),
                              )
                            ],
                          ),
                          const Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget'
                              ' lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant'
                              ' morbi quis pharetra posuere mauris. Morbi sit risus, '
                              'diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices.'),
                          Text(
                            'Facilities',
                            style: GoogleFonts.lato(
                                fontSize: 16, fontWeight: FontWeight.w700),
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.cabin_sharp,
                                color: Colors.deepOrangeAccent,
                              ),
                              Text(
                                'College in 400mtrs',
                                style: GoogleFonts.lato(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  color: const Color(0xFF4A4A4A),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.bathtub_outlined,
                                color: Colors.blueAccent,
                              ),
                              Text(
                                'Bathrooms : 2',
                                style: GoogleFonts.lato(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  color: const Color(0xFF4A4A4A),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(color: Colors.blue),
                  Container(color: Colors.pink),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
