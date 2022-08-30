import 'package:flutter/material.dart';
import 'package:fluttertask/thirdPage.dart';
import 'package:google_fonts/google_fonts.dart';

class secondPage extends StatefulWidget {
  const secondPage({Key? key}) : super(key: key);

  @override
  State<secondPage> createState() => _secondPageState();
}

class _secondPageState extends State<secondPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white54,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: Color(0xFF0E3C6E)),
          BottomNavigationBarItem(
              icon: Icon(Icons.note_alt_rounded),
              label: "Saved",
              backgroundColor: Color(0xFF0E3C6E)),
          BottomNavigationBarItem(
              icon: Icon(Icons.content_paste_search),
              label: "Search",
              backgroundColor: Color(0xFF0E3C6E)),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              label: "Account",
              backgroundColor: Color(0xFF0E3C6E)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 170,
              width: screenWidth,
              decoration: const BoxDecoration(
                color: Color(0xFF0E3C6E),
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(30)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 30, top: 56, right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 61,
                          width: 270,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)),
                          child: Center(
                            child: TextField(
                              decoration: InputDecoration(
                                  prefixIcon: const Icon(Icons.search),
                                  suffixIcon: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.clear),
                                  ),
                                  hintText: "Search college...."),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          height: 61,
                          width: 61,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: const Color(0xFFFFFFFF),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            onPressed: () {},
                            child: const Center(
                              child: Icon(
                                Icons.mic_rounded,
                                color: Color(0xFF0E3C6E),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: SizedBox(
                height: screenHeight * 0.04,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    SmallCards(),
                    SmallCards(),
                    SmallCards(),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  bigCards(
                      context,
                      "assets/images/unsplash_Ucr4Yp-t364.png",
                      "GHJK Engineering college",
                      "More than 1000+ students have been placed",
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu ut imperdiet sed nec ullamcorper."),
                  bigCards(
                      context,
                      "assets/images/unsplash_1iuxWsIZ6ko.png",
                      "Bachelor of Technology",
                      "Lorem ipsum dolor sit amet, consectetur adipiscing ",
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu ut imperdiet sed nec ullamcorper."),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SmallCards extends StatelessWidget {
  const SmallCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5),
      child: Container(
        width: screenWidth * 0.35,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(width: 1, color: Colors.black26),
        ),
        child: const Center(
          child: Text(
            "MVSH Engineering college",
            style: TextStyle(fontSize: 10),
          ),
        ),
      ),
    );
  }
}

Padding bigCards(BuildContext context, String imgloc, String college,
    String short, String body) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
    child: SizedBox(
      height: 280,
      child: Card(
        elevation: 20,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const thirdPage(),
              ),
            );
          },
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    imgloc,
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                  Positioned(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.share_outlined,
                              color: Colors.black,
                            ),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.bookmark_border_outlined,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: SizedBox(
                        height: 60,
                        width: 220,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              college,
                              style: GoogleFonts.lato(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              body,
                              style: GoogleFonts.lato(
                                  fontSize: 9,
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0xFF8E8E8E)),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      height: 60,
                      width: 110,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
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
                          Container(
                            height: 22,
                            width: 88,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6.0),
                                color: const Color(0xFF0E3C6E)),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 8, top: 2, bottom: 2, right: 4),
                              child: Row(
                                children: [
                                  Text(
                                    'Apply Now',
                                    style: GoogleFonts.lato(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 13,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const Divider(
                thickness: 1,
                height: 2,
                color: Colors.black45,
                indent: 20,
                endIndent: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 5),
                child: Row(
                  children: [
                    Image.asset('assets/images/Vector.png'),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      short,
                      style: GoogleFonts.lato(
                          fontSize: 9,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF8E8E8E)),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    SizedBox(
                      height: 20,
                      width: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Icon(
                            Icons.remove_red_eye_outlined,
                            color: Color(0xFFA9A9A9),
                            size: 18,
                          ),
                          Text(
                            '468+',
                            style: GoogleFonts.lato(
                              fontSize: 9,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFFA9A9A9),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
