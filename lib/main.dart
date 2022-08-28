import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fluttertask/secondPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
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
              height: screenHeight * 0.33,
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
                    padding: const EdgeInsets.only(
                        left: 37, top: 50, right: 37, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Find your own way",
                          style: GoogleFonts.lato(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                        ),
                        const Icon(
                          Icons.notifications,
                          color: Colors.white,
                          size: 20,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 37),
                    child: Text(
                      "Search in 600 hundred colleges around!",
                      style: GoogleFonts.lato(
                        fontSize: 14,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 37, top: 40, right: 37),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 53,
                          width: 260,
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
                        Container(
                          height: 53,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)),
                          child: const Center(
                            child: Icon(
                              Icons.mic_rounded,
                              color: Color(0xFF0E3C6E),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: screenHeight * 0.183,
              width: screenWidth * 0.83,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: InkWell(
                  onTap: () => showModalBottomSheet(
                      context: context,
                      builder: (context) => buildSheet(),
                      shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(30)))),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Ink.image(
                            image:
                                const AssetImage('assets/images/Rectangle 141.png'),
                            height: screenHeight * 0.1742,
                            width: screenWidth * 0.83,
                          ),
                          Positioned(
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Top Colleges',
                                    style: GoogleFonts.lato(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    'Search through thousands of accredited colleges and universities online to find'
                                    ' the right one for you.  Apply in 3 min, and connect with your future.',
                                    style: GoogleFonts.lato(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // ElevatedButton(
            //     onPressed: () {
            //       Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //             builder: (context) => secondPage(),
            //           ));
            //     },
            //     child: Text("second page"))
          ],
        ),
      ),
    );
  }

  Widget buildSheet() => Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.clear),
                  ),
                  hintText: "Sort by"),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const secondPage(),
                    ));
              },
              leading: const Icon(
                Icons.school_sharp,
                size: 28,
              ),
              title: Text(
                'Bachelor of Technology',
                style:
                    GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const secondPage(),
                    ));
              },
              leading: const Icon(
                Icons.architecture_outlined,
                size: 28,
              ),
              title: Text(
                'Bachelor of Architecture',
                style:
                    GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const secondPage(),
                    ));
              },
              leading: const Icon(
                Icons.local_pharmacy_outlined,
                size: 28,
              ),
              title: Text(
                'Pharmacy',
                style:
                    GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const secondPage(),
                    ));
              },
              leading: const Icon(
                Icons.balance,
                size: 28,
              ),
              title: Text(
                'Law',
                style:
                    GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const secondPage(),
                    ));
              },
              leading: const Icon(
                Icons.manage_accounts_outlined,
                size: 28,
              ),
              title: Text(
                'Management',
                style:
                    GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      );
}
